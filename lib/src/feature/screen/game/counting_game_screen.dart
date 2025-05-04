import 'package:auto_route/annotations.dart';
import 'package:edu_land/src/shared/extension/ext_context.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';

import 'color_game_screen.dart';


@RoutePage()
class CountingGameScreen extends StatefulWidget {
  const CountingGameScreen({super.key, required this.difficulty});

  final Difficulty difficulty;

  @override
  State<CountingGameScreen> createState() => _CountingGameScreenState();
}

class _CountingGameScreenState extends State<CountingGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.padding.top.paddingTop,
        child: GameWidget(game: NumberSequenceGame(difficulty: widget.difficulty)),
      ),
    );
  }
}

class NumberSequenceGame extends FlameGame with DragCallbacks {
  final Difficulty difficulty;
  late List<NumberObject> numberObjects;
  late List<NumberTarget> numberTargets;
  late TextComponent timerText;
  late TextComponent instructionText;

  List<int> sequence = [];
  List<int> missingNumbers = [];
  bool isGameOver = false;
  double timeLimit = 0;
  double elapsedTime = 0;

  NumberSequenceGame({required this.difficulty});

  @override
  Future<void> onLoad() async {
    if (isGameOver) return;

    await FlameAudio.audioCache.loadAll(['correct.mp3', 'wrong.mp3']);

    _generateSequence();
    timeLimit = _getTimeLimitForDifficulty();

    add(Background());

    instructionText = TextComponent(
      text: 'Kéo số vào ô trống để hoàn thành dãy số!',
      position: Vector2(size.x / 2, 30),
      anchor: Anchor.center,
      textRenderer: TextPaint(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    add(instructionText);

    timerText = TextComponent(
      text: 'Time: ${timeLimit.toInt()} s',
      position: Vector2(size.x / 2, 60),
      anchor: Anchor.center,
      textRenderer: TextPaint(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    add(timerText);

    // Tham số layout
    final itemWidth = 60.0;
    final itemHeight = 60.0;
    final spacing = 20.0;
    final verticalSpacing = 30.0;

    // Tính số lượng số tối đa trên một dòng
    int maxPerRow = (size.x / (itemWidth + spacing)).floor();

    // --- Sequence (ô trống) ---
    numberTargets = [];
    for (int i = 0; i < sequence.length; i++) {
      int row = i ~/ maxPerRow;
      int col = i % maxPerRow;
      double x = (size.x - (maxPerRow * (itemWidth + spacing) - spacing)) / 2 + col * (itemWidth + spacing);
      double y = size.y * 0.25 + row * (itemHeight + verticalSpacing);

      final isMissing = missingNumbers.contains(sequence[i]);
      final target = NumberTarget(
        position: Vector2(x, y),
        size: Vector2(itemWidth, itemHeight),
        number: sequence[i],
        isMissing: isMissing,
      )..anchor = Anchor.center;
      numberTargets.add(target);
      add(target);
    }

    // --- Draggable numbers ---
    numberObjects = [];
    final shuffledNumbers = List.from(missingNumbers)..shuffle();
    for (int i = 0; i < shuffledNumbers.length; i++) {
      int row = i ~/ maxPerRow;
      int col = i % maxPerRow;
      double x = (size.x - (maxPerRow * (itemWidth + spacing) - spacing)) / 2 + col * (itemWidth + spacing);
      double y = size.y * 0.65 + row * (itemHeight + verticalSpacing);

      final obj = NumberObject(
        position: Vector2(x, y),
        size: Vector2(itemWidth, itemHeight),
        number: shuffledNumbers[i],
      )..anchor = Anchor.center;
      numberObjects.add(obj);
      add(obj);
    }
  }

  void _generateSequence() {
    switch (difficulty) {
      case Difficulty.easy:
        sequence = List.generate(5, (i) => i + 1);
        missingNumbers = [2, 4];
        break;
      case Difficulty.medium:
        sequence = List.generate(7, (i) => i + 1);
        missingNumbers = [2, 4, 6];
        break;
      case Difficulty.hard:
        sequence = List.generate(10, (i) => i + 1);
        missingNumbers = [3, 5, 7, 9];
        break;
    }
  }

  double _getTimeLimitForDifficulty() {
    switch (difficulty) {
      case Difficulty.easy:
        return 30;
      case Difficulty.medium:
        return 40;
      case Difficulty.hard:
        return 50;
    }
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (isGameOver) return;

    elapsedTime += dt;
    final timeLeft = (timeLimit - elapsedTime).clamp(0, timeLimit).toInt();
    timerText.text = 'Time: $timeLeft s';

    if (elapsedTime >= timeLimit && numberObjects.any((obj) => obj.isDraggable)) {
      showGameOver();
    }
  }

  void checkMatch(NumberObject obj) {
    if (isGameOver) return;

    for (final target in numberTargets) {
      if (obj.checkOverlap(target) && target.isMissing) {
        if (obj.number == target.number) {
          FlameAudio.play('correct.mp3');
          target.add(
            MoveEffect.by(
              Vector2(5, 0),
              EffectController(duration: 0.1, repeatCount: 3, alternate: true),
            ),
          );
          target.add(
            ScaleEffect.to(
              Vector2.all(1.2),
              EffectController(duration: 0.2, alternate: true, repeatCount: 2),
            ),
          );
          obj.position = target.position;
          obj.isDraggable = false;
          target.isMissing = false;
          checkGameOver();
        } else {
          FlameAudio.play('wrong.mp3');
          obj.position = obj.originalPosition;
        }
        return;
      }
    }
    obj.position = obj.originalPosition;
  }

  void checkGameOver() {
    if (numberTargets.every((target) => !target.isMissing)) {
      isGameOver = true;
      numberObjects.forEach((obj) => remove(obj));
      numberTargets.forEach((target) => remove(target));
      timerText.removeFromParent();
      instructionText.removeFromParent();

      add(
        TextComponent(
          text: '🎉 Chúc mừng! \nBạn đã hoàn thành!',
          position: Vector2(size.x / 2, size.y / 2),
          anchor: Anchor.center,
          textRenderer: TextPaint(
            style: const TextStyle(
              color: Colors.green,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

      add(
        TappableText(
          text: 'Chạm để chơi lại',
          position: Vector2(size.x / 2, size.y / 2 + 100),
          onTap: () {
            isGameOver = false;
            elapsedTime = 0;
            children.forEach((child) => remove(child));
            onLoad();
          },
        ),
      );
    }
  }

  void showGameOver() {
    isGameOver = true;
    numberObjects.forEach((obj) => remove(obj));
    numberTargets.forEach((target) => remove(target));
    timerText.removeFromParent();
    instructionText.removeFromParent();

    add(
      TextComponent(
        text: "Game Over! Time's Up!",
        position: Vector2(size.x / 2, size.y / 2),
        anchor: Anchor.center,
        textRenderer: TextPaint(
          style: const TextStyle(
            color: Colors.red,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    add(
      TappableText(
        text: 'Tap to Restart',
        position: Vector2(size.x / 2, size.y / 2 + 100),
        onTap: () {
          isGameOver = false;
          elapsedTime = 0;
          children.forEach((child) => remove(child));
          onLoad();
        },
      ),
    );
  }
}

class Background extends PositionComponent {
  @override
  void render(Canvas canvas) {
    canvas.drawRect(
      Rect.fromLTWH(0, 0, findGame()?.size.x ?? 0, findGame()?.size.y ?? 0),
      Paint()..color = Colors.white,
    );
  }
}

class NumberObject extends PositionComponent with DragCallbacks {
  final int number;
  bool isDraggable = true;
  late Vector2 originalPosition;
  bool _isDragging = false;

  NumberObject({
    required Vector2 position,
    required Vector2 size,
    required this.number,
  }) : super(position: position, size: size) {
    originalPosition = position.clone();
  }

  @override
  void render(Canvas canvas) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    final center = size / 2;
    
    // Draw train car shape
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: Offset(center.x, center.y),
          width: size.x,
          height: size.y,
        ),
        const Radius.circular(10),
      ),
      paint,
    );

    // Draw number
    final textPainter = TextPainter(
      text: TextSpan(
        text: number.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    
    textPainter.paint(
      canvas,
      Offset(
        center.x - textPainter.width / 2,
        center.y - textPainter.height / 2,
      ),
    );
  }

  @override
  void onDragStart(DragStartEvent event) {
    if (isDraggable) {
      _isDragging = true;
    }
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    if (_isDragging) {
      position += event.localDelta;
    }
  }

  @override
  void onDragEnd(DragEndEvent event) {
    if (_isDragging) {
      _isDragging = false;
      final game = findGame() as NumberSequenceGame;
      game.checkMatch(this);
    }
  }

  @override
  void onDragCancel(DragCancelEvent event) {
    _isDragging = false;
    position = originalPosition;
  }

  bool checkOverlap(PositionComponent other) {
    final rect1 = toRect();
    final rect2 = other.toRect();
    return rect1.overlaps(rect2);
  }
}

class NumberTarget extends PositionComponent {
  final int number;
  bool isMissing;

  NumberTarget({
    required Vector2 position,
    required Vector2 size,
    required this.number,
    required this.isMissing,
  }) : super(position: position, size: size);

  @override
  void render(Canvas canvas) {
    final paint = Paint()
      ..color = isMissing ? Colors.grey : Colors.green
      ..style = isMissing ? PaintingStyle.stroke : PaintingStyle.fill
      ..strokeWidth = 4;
    final center = size / 2;
    
    // Draw train car shape
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: Offset(center.x, center.y),
          width: size.x,
          height: size.y,
        ),
        const Radius.circular(10),
      ),
      paint,
    );

    if (!isMissing) {
      // Draw number
      final textPainter = TextPainter(
        text: TextSpan(
          text: number.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      
      textPainter.paint(
        canvas,
        Offset(
          center.x - textPainter.width / 2,
          center.y - textPainter.height / 2,
        ),
      );
    }
  }
}

class TappableText extends TextComponent with TapCallbacks {
  final void Function()? onTap;

  TappableText({
    required String text,
    required Vector2 position,
    required this.onTap,
  }) : super(
          text: text,
          position: position,
          anchor: Anchor.center,
          textRenderer: TextPaint(
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        );

  @override
  void onTapDown(TapDownEvent event) {
    onTap?.call();
  }
}
