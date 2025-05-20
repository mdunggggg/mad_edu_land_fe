import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../../../shared/utils/text_to_speech_util.dart';

@RoutePage()
class SimpleAdditionGameScreen extends StatefulWidget {
  const SimpleAdditionGameScreen({super.key});

  @override
  State<SimpleAdditionGameScreen> createState() => _SimpleAdditionGameScreenState();
}

class _SimpleAdditionGameScreenState extends State<SimpleAdditionGameScreen> {

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
          GameWidget(game: SimpleAdditionGame(tts: tts)),
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

enum MathType { addition, subtraction }

class SimpleAdditionGame extends FlameGame with TapCallbacks {
  late int leftCount;
  late int rightCount;
  late int answer;
  late int correctAnswer;
  late List<ObjectIcon> leftObjects;
  late List<ObjectIcon> rightObjects;
  late List<int> answerOptions;
  late TextBoxComponent instructionText;
  late TextBoxComponent questionText;
  late MathType mathType;
  bool isGameOver = false;
  bool isMerged = false;
  int animationCount = 0;
  static const int maxAnimations = 10;
  final TextToSpeechUtil tts;
  
  SimpleAdditionGame({required this.tts});

  @override
  Future<void> onLoad() async {
    await FlameAudio.audioCache.loadAll(['correct.mp3', 'wrong.mp3']);
    _generateQuestion();
    add(Background());
    
    // Hiển thị câu hỏi hướng dẫn
    instructionText = TextBoxComponent(
      text: mathType == MathType.addition
          ? 'Có bao nhiêu quả bóng tất cả?'
          : 'Còn lại bao nhiêu quả bóng?',
      position: Vector2(size.x / 2, size.y * 0.12),
      anchor: Anchor.center,
      boxConfig: TextBoxConfig(
        maxWidth: size.x * 0.8,
        timePerChar: 0.0,
        growingBox: true,
        margins: const EdgeInsets.all(16),
      ),
      textRenderer: TextPaint(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    add(instructionText);
    tts.speak(instructionText.text);

    // Hiển thị phép tính
    questionText = TextBoxComponent(
      text: mathType == MathType.addition
          ? '$leftCount + $rightCount = ?'
          : '$leftCount - $rightCount = ?',
      position: Vector2(size.x / 2, size.y * 0.2),
      anchor: Anchor.center,
      boxConfig: TextBoxConfig(
        maxWidth: size.x * 0.8,
        timePerChar: 0.0,
        growingBox: true,
        margins: const EdgeInsets.all(16),
      ),
      textRenderer: TextPaint(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    add(questionText);
    tts.speak(questionText.text);

    // Thêm padding cho game
    final gameAreaWidth = size.x * 0.9; // Sử dụng 90% chiều rộng màn hình

    // Hiển thị hai nhóm object
    leftObjects = [];
    rightObjects = [];
    const double iconSize = 32;
    const double padding = 10;
    int maxCol = 4;
    // Nhóm trái
    for (int i = 0; i < leftCount; i++) {
      int row = i ~/ maxCol;
      int col = i % maxCol;
      double x = size.x * 0.25 + col * (iconSize + padding);
      double y = size.y * 0.4 + row * (iconSize + padding);
      final obj = ObjectIcon(
        position: Vector2(x, y),
        color: Colors.blue,
      );
      leftObjects.add(obj);
      add(obj);
    }
    // Nhóm phải
    for (int i = 0; i < rightCount; i++) {
      int row = i ~/ maxCol;
      int col = i % maxCol;
      double x = size.x * 0.6 + col * (iconSize + padding);
      double y = size.y * 0.4 + row * (iconSize + padding);
      final obj = ObjectIcon(
        position: Vector2(x, y),
        color: Colors.red,
      );
      rightObjects.add(obj);
      add(obj);
    }

    // Hiển thị đáp án ngay lập tức
    _showAnswerOptions();

    // Bắt đầu hiệu ứng
    _startAnimation();
  }

  void _showAnswerOptions() {
    final double btnWidth = 70;
    final double btnHeight = 50;
    final double spacing = 30;
    final double startX = (size.x - (answerOptions.length * btnWidth + (answerOptions.length - 1) * spacing)) / 2;
    for (int i = 0; i < answerOptions.length; i++) {
      add(AnswerButton(
        answer: answerOptions[i],
        position: Vector2(startX + i * (btnWidth + spacing), size.y * 0.75),
        width: btnWidth,
        height: btnHeight,
        onTap: () => _handleAnswer(answerOptions[i]),
      ));
    }
  }

  void _startAnimation() async {
    while (animationCount < maxAnimations && !isGameOver) {
      await _mergeObjects();
      await Future.delayed(const Duration(seconds: 1));
      _resetObjects();
      animationCount++;
    }
  }

  void _resetObjects() {
    const double iconSize = 32;
    const double padding = 10;
    int maxCol = 4;
    
    // Reset nhóm trái
    for (int i = 0; i < leftObjects.length; i++) {
      int row = i ~/ maxCol;
      int col = i % maxCol;
      double x = size.x * 0.25 + col * (iconSize + padding);
      double y = size.y * 0.4 + row * (iconSize + padding);
      leftObjects[i].position = Vector2(x, y);
      leftObjects[i].setColor(Colors.blue);
    }
    
    // Reset nhóm phải
    for (int i = 0; i < rightObjects.length; i++) {
      int row = i ~/ maxCol;
      int col = i % maxCol;
      double x = size.x * 0.6 + col * (iconSize + padding);
      double y = size.y * 0.4 + row * (iconSize + padding);
      rightObjects[i].position = Vector2(x, y);
      rightObjects[i].setColor(Colors.red);
    }
  }

  Future<void> _mergeObjects() async {
    if (mathType == MathType.addition) {
      // Hiệu ứng cộng: xếp cạnh nhau
      const double iconSize = 32;
      const double padding = 10;
      int maxCol = 4;
      
      // Tính toán vị trí mới cho tất cả các quả bóng
      List<ObjectIcon> allObjects = [...leftObjects, ...rightObjects];
      for (int i = 0; i < allObjects.length; i++) {
        int row = i ~/ maxCol;
        int col = i % maxCol;
        double x = size.x * 0.25 + col * (iconSize + padding);
        double y = size.y * 0.4 + row * (iconSize + padding);
        
        allObjects[i].add(MoveEffect.to(
          Vector2(x, y),
          EffectController(duration: 0.5, curve: Curves.easeInOut),
        ));
        
        // Thay đổi màu dần dần
        for (int j = 0; j < 10; j++) {
          await Future.delayed(const Duration(milliseconds: 70));
          allObjects[i].setColor(Color.lerp(Colors.red, Colors.blue, j / 10)!);
        }
        await Future.delayed(const Duration(milliseconds: 50));
      }
    } else {
      // Hiệu ứng trừ: gộp và biến mất
      for (int i = 0; i < rightCount; i++) {
        if (i < leftCount) {
          // Gộp vào quả bóng bên trái
          rightObjects[i].add(MoveEffect.to(
            leftObjects[i].position,
            EffectController(duration: 0.5, curve: Curves.easeInOut),
          ));
          
          // Giảm độ trong suốt dần dần
          for (int j = 0; j < 10; j++) {
            await Future.delayed(const Duration(milliseconds: 70));
            rightObjects[i].setColor(Colors.red.withOpacity(1 - j / 10));
            leftObjects[i].setColor(Colors.blue.withOpacity(1 - j / 10));
          }
        }
        await Future.delayed(const Duration(milliseconds: 50));
      }
    }
    await Future.delayed(const Duration(milliseconds: 500));
  }

  void _generateQuestion() {
    mathType = Random().nextDouble() <= 0.5 ? MathType.addition : MathType.subtraction;
    if (mathType == MathType.addition) {
      leftCount = Random().nextInt(5) + 1; // 1-3
      rightCount = Random().nextInt(5) + 1; // 1-3
      correctAnswer = leftCount + rightCount;
    } else {
      leftCount = Random().nextInt(3) + 2; // 2-4
      rightCount = Random().nextInt(leftCount - 1) + 1; // 1-(leftCount-1)
      correctAnswer = leftCount - rightCount;
    }
    // Sinh 2 đáp án sai
    answerOptions = [correctAnswer];
    while (answerOptions.length < 3) {
      int fake = correctAnswer + Random().nextInt(3) - 1;
      if (fake < 0) fake = 0;
      if (!answerOptions.contains(fake) && fake != correctAnswer) {
        answerOptions.add(fake);
      }
    }
    answerOptions.shuffle();
  }

  void _handleAnswer(int selected) {
    if (isGameOver) return;
    isGameOver = true;
    bool correct = selected == correctAnswer;
    FlameAudio.play(correct ? 'correct.mp3' : 'wrong.mp3');
    
    String message = correct ? '🎉 Đúng rồi! Chạm để chơi tiếp' : 'Sai rồi! Thử lại nhé!';
    tts.speak(message);
    add(
      TextBoxComponent(
        text: message,
        position: Vector2(size.x / 2, size.y * 0.9),
        anchor: Anchor.center,
        textRenderer: TextPaint(
          style: TextStyle(
            color: correct ? Colors.green : Colors.red,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    add(TappableOverlay(onTap: _restart));
  }

  void _restart() {
    isGameOver = false;
    isMerged = false;
    animationCount = 0;
    children.clear();
    onLoad();
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
  late Paint _paint;
  
  ObjectIcon({required Vector2 position, required this.color}) : super(position: position, size: Vector2(32, 32)) {
    _paint = Paint()..color = color;
  }

  void setColor(Color newColor) {
    _paint.color = newColor;
  }

  @override
  void render(Canvas canvas) {
    canvas.drawCircle(Offset(size.x / 2, size.y / 2), size.x / 2, _paint);
  }
}

class AnswerButton extends PositionComponent with TapCallbacks {
  final int answer;
  final double width;
  final double height;
  final void Function() onTap;
  AnswerButton({required this.answer, required Vector2 position, required this.width, required this.height, required this.onTap})
      : super(position: position, size: Vector2(width, height), anchor: Anchor.topLeft);

  @override
  void render(Canvas canvas) {
    final paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, width, height),
        const Radius.circular(12),
      ),
      paint,
    );
    final textPainter = TextPainter(
      text: TextSpan(
        text: answer.toString(),
        style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    textPainter.paint(
      canvas,
      Offset(width / 2 - textPainter.width / 2, height / 2 - textPainter.height / 2),
    );
  }

  @override
  void onTapDown(TapDownEvent event) {
    onTap();
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
  void render(Canvas canvas) {}
  @override
  void onTapDown(TapDownEvent event) {
    onTap();
  }
}
