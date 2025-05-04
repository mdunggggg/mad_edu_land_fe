
import 'package:auto_route/annotations.dart';
import 'package:edu_land/src/shared/extension/ext_context.dart';
import 'package:edu_land/src/shared/extension/ext_num.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';

enum Difficulty { easy, medium, hard }

@RoutePage()
class ColorGameScreen extends StatefulWidget {
  const ColorGameScreen({super.key, required this.difficulty});

  final Difficulty difficulty;

  @override
  State<ColorGameScreen> createState() => _ColorGameScreenState();
}

class _ColorGameScreenState extends State<ColorGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.padding.top.paddingTop,
        child: GameWidget(game: ColorMatchingGame(difficulty: widget.difficulty)),
      ),
    );
  }
}

class ColorMatchingGame extends FlameGame with DragCallbacks {
  final Difficulty difficulty;
  late List<ColorObject> objects;
  late List<ColorTarget> targets;
  late TextComponent timerText;

  List<Color> colors = [];
  bool isGameOver = false;
  double timeLimit = 0;
  double elapsedTime = 0;

  ColorMatchingGame({required this.difficulty});

  @override
  Future<void> onLoad() async {
    if (isGameOver) return;

    await FlameAudio.audioCache.loadAll(['correct.mp3', 'wrong.mp3']);

    colors = _getColorsForDifficulty();
    timeLimit = _getTimeLimitForDifficulty();

    add(Background());

    timerText = TextComponent(
      text: 'Time: ${timeLimit.toInt()} s',
      position: Vector2(size.x / 2, 50),
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

    final spacing = 70.0; // khoảng cách giữa các item
    final totalHeight = colors.length * spacing;
    final startY = (size.y - totalHeight) / 2;

    final objectX = size.x * 0.25;
    final targetX = size.x * 0.75;

// Tạo ColorObjects (bên trái)
    objects = [];
    final shuffledColors = List.from(colors)..shuffle();
    for (int i = 0; i < colors.length; i++) {
      final obj = ColorObject(
        position: Vector2(objectX, startY + i * spacing),
        size: Vector2(60, 60),
        color: shuffledColors[i],
      )..anchor = Anchor.center;
      objects.add(obj);
      add(obj);
    }

// Tạo ColorTargets (bên phải)
    targets = [];
    for (int i = 0; i < colors.length; i++) {
      final target = ColorTarget(
        position: Vector2(targetX, startY + i * spacing),
        size: Vector2(60, 60),
        color: colors[i],
      )..anchor = Anchor.center;
      targets.add(target);
      add(target);
    }
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (isGameOver) return;

    elapsedTime += dt;
    final timeLeft = (timeLimit - elapsedTime).clamp(0, timeLimit).toInt();
    timerText.text = 'Time: $timeLeft s';

    if (elapsedTime >= timeLimit && objects.any((obj) => obj.isDraggable)) {
      showGameOver();
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

  List<Color> _getColorsForDifficulty() {
    switch (difficulty) {
      case Difficulty.easy:
        return [Colors.red, Colors.blue, Colors.green];
      case Difficulty.medium:
        return [
          Colors.red,
          Colors.blue,
          Colors.green,
          Colors.yellow,
          Colors.purple,
        ];
      case Difficulty.hard:
        return [
          Colors.red,
          Colors.blue,
          Colors.green,
          Colors.yellow,
          Colors.purple,
          Colors.orange,
          Colors.pink,
        ];
    }
  }

  void checkMatch(ColorObject obj) {
    if (isGameOver) return;

    for (final target in targets) {
      if (obj.checkOverlap(target)) {
        if (obj.color == target.color) {
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
    if (objects.every((obj) => !obj.isDraggable)) {
      isGameOver = true;
      objects.forEach((obj) => remove(obj));
      targets.forEach((target) => remove(target));
      timerText.removeFromParent();

      // Thêm thông báo chúc mừng
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

      // Thêm nút chơi lại
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
    objects.forEach((obj) => remove(obj));
    targets.forEach((target) => remove(target));
    timerText.removeFromParent();

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

class ColorObject extends PositionComponent with DragCallbacks {
  final Color color;
  bool isDraggable = true;
  late Vector2 originalPosition;
  bool _isDragging = false;

  ColorObject({
    required Vector2 position,
    required Vector2 size,
    required this.color,
  }) : super(position: position, size: size) {
    originalPosition = position.clone();
  }

  @override
  void render(Canvas canvas) {
    final paint = Paint()..color = color;
    final center = size / 2;
    canvas.drawCircle(
      Offset(center.x, center.y),
      size.x / 2,
      paint,
    );
    canvas.drawCircle(
      Offset(center.x, center.y),
      size.x / 2,
      Paint()
        ..color = Colors.black.withOpacity(0.2)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 5),
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
      final game = findGame() as ColorMatchingGame;
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

class ColorTarget extends PositionComponent {
  final Color color;

  ColorTarget({
    required Vector2 position,
    required Vector2 size,
    required this.color,
  }) : super(position: position, size: size);

  @override
  void render(Canvas canvas) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    final center = size / 2;
    canvas.drawCircle(
      Offset(center.x, center.y),
      size.x / 2,
      paint,
    );
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
