

import 'package:edu_land/src/model/question_create_model.dart';

import '../feature/screen/student/home/student_home_screen.dart';

class QuestionSetCreateModel {
  Category category = Category.COUNTING;
  String name = '';
  List<QuestionCreateModel> questions = [];


  QuestionSetCreateModel({required this.category, required this.name, required this.questions});

  Map<String, dynamic> toJson() {
    return {
      'category': category.name,
      'name': name,
      'questions': questions.map((e) => e.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return 'QuestionSetCreateModel{category: $category, name: $name, questions: $questions}';
  }
}