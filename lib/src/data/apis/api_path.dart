class ApiPath {
  static const String register = '/api/auth/register';
  static const String registerStudent = '/api/auth/register/student';
  static const String registerTeacher = '/api/auth/register/teacher';
  static const String login = '/api/auth/login';
  static const String teacher = '/api/teacher';
  static const String classroom = '/api/classrooms';
  static const String questionSet = '/api/question-sets';
  static const String question = '/api/questions';
  static const String scoring = '$questionSet/scoring';
  static const String myQuestionSet = '$teacher/my-question-sets';
  static const String studentProfile = '/api/student/profile';
  static const String teacherProfile = '/api/teacher/profile';
  static const String stateAssignedClass = '/api/classrooms/state-assign-question';
  static const String assignClass = '/api/question-sets/assign-to-classroom';

}