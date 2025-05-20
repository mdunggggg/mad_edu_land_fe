import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

enum TtsState { playing, stopped, paused, continued }

class TextToSpeechUtil {
  static final TextToSpeechUtil _instance = TextToSpeechUtil._internal();
  
  factory TextToSpeechUtil() {
    return _instance;
  }
  
  TextToSpeechUtil._internal();
  
  late FlutterTts flutterTts;
  TtsState ttsState = TtsState.stopped;
  
  double volume = 0.8;
  double pitch = 1.0;
  double rate = 0.5;
  
  void init() {
    flutterTts = FlutterTts();
    _setAwaitOptions();
    
    flutterTts.setStartHandler(() {
      ttsState = TtsState.playing;
    });
    
    flutterTts.setCompletionHandler(() {
      ttsState = TtsState.stopped;
    });
    
    flutterTts.setErrorHandler((msg) {
      ttsState = TtsState.stopped;
    });
    
    flutterTts.setLanguage("vi-VN");
  }
  
  Future<void> _setAwaitOptions() async {
    await flutterTts.awaitSpeakCompletion(true);
  }
  
  Future<bool> speak(String text) async {
    if (text.isEmpty) return false;
    // stop any  ongoing speech
    await flutterTts.stop();

    await flutterTts.setVolume(volume);
    await flutterTts.setSpeechRate(rate);
    await flutterTts.setPitch(pitch);
    
    var result = await flutterTts.speak(text);
    if (result == 1) {
      ttsState = TtsState.playing;
      return true;
    } else {
      ttsState = TtsState.stopped;
      return false;
    }
  }
  
  Future<bool> stop() async {
    var result = await flutterTts.stop();
    if (result == 1) {
      ttsState = TtsState.stopped;
      return true;
    }
    return false;
  }
  
  bool isPlaying() {
    return ttsState == TtsState.playing;
  }
  
  void dispose() {
    flutterTts.stop();
  }
} 