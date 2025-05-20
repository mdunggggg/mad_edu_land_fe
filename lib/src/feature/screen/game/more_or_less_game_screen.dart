import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../../../shared/utils/text_to_speech_util.dart';

@RoutePage()
class MoreOrLessGameScreen extends StatefulWidget {
  const MoreOrLessGameScreen({super.key});

  @override
  State<MoreOrLessGameScreen> createState() => _MoreOrLessGameScreenState();
}

class _MoreOrLessGameScreenState extends State<MoreOrLessGameScreen> {

  final TextToSpeechUtil tts = TextToSpeechUtil();

  @override
  void initState() {
    tts.init();
    super.initState();
  }

  @override
  void dispose() {
    tts.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GameWidget(game: MoreOrLessGame(tts: tts)),
          Positioned(
            top: MediaQuery.of(context).padding.top + 10,
            left: 10,
            child: InkWell(
              onTap: () {
                context.router.maybePop();
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum CompareType { more, less, equal, digitMore, digitLess }

class MoreOrLessGame extends FlameGame with TapCallbacks {
  late CompareType compareType;
  late int leftCount;
  late int rightCount;
  late List<ObjectIcon> leftObjects;
  late List<ObjectIcon> rightObjects;
  late TextComponent instructionText;
  late ScaleComponent scaleComponent;
  late bool isDigitMode;
  late int leftDigit;
  late int rightDigit;
  bool isGameOver = false;
  final TextToSpeechUtil tts;


  MoreOrLessGame({required this.tts});

  // Tham số cho grid
   double iconSize = 32;
   double padding = 10;

  @override
  Future<void> onLoad() async {
    await FlameAudio.audioCache.loadAll(['correct.mp3', 'wrong.mp3']);
    _generateQuestion();
    add(Background());
    instructionText = TextComponent(
      text: _getInstruction(),
      position: Vector2(size.x / 2, size.y * 0.12),
      anchor: Anchor.center,
      textRenderer: TextPaint(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    add(instructionText);
    tts.speak(_getInstruction());

    // Cán cân
    scaleComponent = ScaleComponent(
      leftCount: isDigitMode ? leftDigit : leftCount,
      rightCount: isDigitMode ? rightDigit : rightCount,
      isDigit: isDigitMode,
      position: Vector2(size.x / 2, size.y * 0.35),
      size: Vector2(220, 120),
    );
    add(scaleComponent);

    // Vùng hiển thị mỗi nhóm
    final double groupWidth = size.x * 0.4;
    final double leftStartX = size.x * 0.1;
    final double rightStartX = size.x * 0.5;

    // Tính số cột tối đa cho mỗi nhóm
    int leftMaxCol = (groupWidth / (iconSize + padding)).floor();
    int rightMaxCol = (groupWidth / (iconSize + padding)).floor();

    // Hai nhóm đồ vật hoặc số
    if (!isDigitMode) {
      leftObjects = [];
      rightObjects = [];
      for (int i = 0; i < leftCount; i++) {
        int row = i ~/ leftMaxCol;
        int col = i % leftMaxCol;
        double totalWidth = leftMaxCol * (iconSize + padding) - padding;
        double offsetX = leftStartX + (groupWidth - totalWidth) / 2;
        double x = offsetX + col * (iconSize + padding);
        double y = size.y * 0.6 + row * (iconSize + padding);
        final obj = ObjectIcon(
          position: Vector2(x, y),
          color: Colors.blue,
        );
        leftObjects.add(obj);
        add(obj);
      }
      for (int i = 0; i < rightCount; i++) {
        int row = i ~/ rightMaxCol;
        int col = i % rightMaxCol;
        double totalWidth = rightMaxCol * (iconSize + padding) - padding;
        double offsetX = rightStartX + (groupWidth - totalWidth) / 2;
        double x = offsetX + col * (iconSize + padding);
        double y = size.y * 0.6 + row * (iconSize + padding);
        final obj = ObjectIcon(
          position: Vector2(x, y),
          color: Colors.red,
        );
        rightObjects.add(obj);
        add(obj);
      }
    } else {
      // Hiển thị số lớn
      add(DigitComponent(
        digit: leftDigit,
        position: Vector2(size.x * 0.3, size.y * 0.6),
        color: Colors.blue,
        onTap: () => _handleTap(true),
      ));
      add(DigitComponent(
        digit: rightDigit,
        position: Vector2(size.x * 0.7, size.y * 0.6),
        color: Colors.red,
        onTap: () => _handleTap(false),
      ));
    }
  }

  void _generateQuestion() {
    // 30% xác suất là so sánh số, còn lại là nhóm vật
    isDigitMode = Random().nextDouble() < 0.3;
    if (isDigitMode) {
      leftDigit = Random().nextInt(9) + 1;
      rightDigit = Random().nextInt(9) + 1;
      if (leftDigit == rightDigit) {
        compareType = CompareType.equal;
      } else if (Random().nextBool()) {
        compareType = CompareType.digitMore;
      } else {
        compareType = CompareType.digitLess;
      }
    } else {
      leftCount = Random().nextInt(6) + 2;
      rightCount = Random().nextInt(6) + 2;
      if (leftCount == rightCount) {
        compareType = CompareType.equal;
      } else if (Random().nextBool()) {
        compareType = CompareType.more;
      } else {
        compareType = CompareType.less;
      }
    }
  }

  String _getInstruction() {
    switch (compareType) {
      case CompareType.more:
        return 'Chạm vào nhóm NHIỀU HƠN';
      case CompareType.less:
        return 'Chạm vào nhóm ÍT HƠN';
      case CompareType.equal:
        return 'Hai nhóm BẰNG NHAU, \nchạm vào bất kỳ nhóm nào!';
      case CompareType.digitMore:
        return 'Chạm vào số LỚN HƠN';
      case CompareType.digitLess:
        return 'Chạm vào số NHỎ HƠN';
    }
  }

  void _handleTap(bool isLeft) {
    if (isGameOver) return;
    bool correct = false;
    if (isDigitMode) {
      if (compareType == CompareType.digitMore) {
        correct = (isLeft && leftDigit > rightDigit) || (!isLeft && rightDigit > leftDigit);
      } else if (compareType == CompareType.digitLess) {
        correct = (isLeft && leftDigit < rightDigit) || (!isLeft && rightDigit < leftDigit);
      } else if (compareType == CompareType.equal) {
        correct = leftDigit == rightDigit;
      }
    } else {
      if (compareType == CompareType.more) {
        correct = (isLeft && leftCount > rightCount) || (!isLeft && rightCount > leftCount);
      } else if (compareType == CompareType.less) {
        correct = (isLeft && leftCount < rightCount) || (!isLeft && rightCount < leftCount);
      } else if (compareType == CompareType.equal) {
        correct = leftCount == rightCount;
      }
    }
    if (correct) {
      FlameAudio.play('correct.mp3');
      String message = '🎉 Đúng rồi! Chạm để chơi tiếp';
      tts.speak(message);
      add(
        TextComponent(
          text: message,
          position: Vector2(size.x / 2, size.y * 0.9),
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
      isGameOver = true;
      add(TappableOverlay(onTap: _restart));
    } else {
      FlameAudio.play('wrong.mp3');
      String message = 'Sai rồi! Thử lại nhé!';
      tts.speak(message);
      add(
        TextComponent(
          text: message,
          position: Vector2(size.x / 2, size.y * 0.9),
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
      isGameOver = true;
      add(TappableOverlay(onTap: _restart));
    }
  }

  void _restart() {
    isGameOver = false;
    children.clear();
    onLoad();
  }

  @override
  void onTapDown(TapDownEvent event) {
    if (isGameOver) return;
    final pos = event.canvasPosition;
    if (!isDigitMode) {
      final leftRect = Rect.fromLTWH(size.x * 0.15, size.y * 0.55, 120, 120);
      final rightRect = Rect.fromLTWH(size.x * 0.55, size.y * 0.55, 120, 120);
      if (leftRect.contains(Offset(pos.x, pos.y))) {
        _handleTap(true);
      } else if (rightRect.contains(Offset(pos.x, pos.y))) {
        _handleTap(false);
      }
    }
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

class ObjectIcon extends PositionComponent {
  final Color color;
  ObjectIcon({required Vector2 position, required this.color}) : super(position: position, size: Vector2(32, 32));

  @override
  void render(Canvas canvas) {
    final paint = Paint()..color = color;
    canvas.drawCircle(Offset(size.x / 2, size.y / 2), size.x / 2, paint);
  }
}

class DigitComponent extends PositionComponent with TapCallbacks {
  final int digit;
  final Color color;
  final void Function() onTap;
  DigitComponent({required this.digit, required Vector2 position, required this.color, required this.onTap})
      : super(position: position, size: Vector2(70, 70), anchor: Anchor.center);

  @override
  void render(Canvas canvas) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(center: Offset(size.x / 2, size.y / 2), width: size.x, height: size.y),
        const Radius.circular(16),
      ),
      paint,
    );
    final textPainter = TextPainter(
      text: TextSpan(
        text: digit.toString(),
        style: const TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    textPainter.paint(
      canvas,
      Offset(size.x / 2 - textPainter.width / 2, size.y / 2 - textPainter.height / 2),
    );
  }

  @override
  void onTapDown(TapDownEvent event) {
    onTap();
  }
}

class ScaleComponent extends PositionComponent {
  final int leftCount;
  final int rightCount;
  final bool isDigit;
  ScaleComponent({required this.leftCount, required this.rightCount, required this.isDigit, required Vector2 position, required Vector2 size})
      : super(position: position, size: size, anchor: Anchor.center);

  @override
  void render(Canvas canvas) {
    final paint = Paint()
      ..color = Colors.brown
      ..strokeWidth = 8;
    final centerY = size.y / 2;
    // Thanh ngang
    double angle = 0;
    if (!isDigit) {
      if (leftCount > rightCount) angle = 0.18;
      if (leftCount < rightCount) angle = -0.18;
    } else {
      if (leftCount > rightCount) angle = 0.18;
      if (leftCount < rightCount) angle = -0.18;
    }
    canvas.save();
    canvas.translate(size.x / 2, centerY);
    canvas.rotate(angle);
    canvas.drawLine(Offset(-80, 0), Offset(80, 0), paint);
    // Đĩa cân trái
    canvas.drawCircle(Offset(-80, 0), 18, Paint()..color = Colors.blue);
    // Đĩa cân phải
    canvas.drawCircle(Offset(80, 0), 18, Paint()..color = Colors.red);
    canvas.restore();
    // Trụ đứng
    canvas.drawRect(Rect.fromCenter(center: Offset(size.x / 2, size.y - 20), width: 16, height: 60), paint);
  }
}

class TappableOverlay extends PositionComponent with TapCallbacks {
  final void Function() onTap;
  TappableOverlay({required this.onTap});
  @override
  Future<void> onLoad() async {
    size = findGame()!.size;
    position = Vector2.zero();
  }
  @override
  void render(Canvas canvas) {
  }
  @override
  void onTapDown(TapDownEvent event) {
    onTap();
  }
}
