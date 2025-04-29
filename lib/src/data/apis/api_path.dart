class ApiPath {
  static const String register = '/api/auth/register';
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
  static const String studentInClassroom = '/api/classrooms/students';
  static const String questionSetInClassroom = '/api/classrooms/question-sets';
  static const String addStudentToClassroom = '/api/classrooms/add-student';
  static const String getMyClassrooms = '/api/student/classrooms';
  static const String historyQuizPlayed = '/api/history';
  static const String teacherClassList = '/api/teacher/my-classrooms';
  static const String deleteQuestionSet = '/api/question-sets';
  static const String posts = '/api/posts';
  static const String joinClassroom = '/api/student/classrooms/join';
}