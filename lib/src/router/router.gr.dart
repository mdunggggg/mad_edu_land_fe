// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:edu_land/src/feature/screen/create_question_set/create_question_set_screen.dart'
    as _i4;
import 'package:edu_land/src/feature/screen/forum/create_post/create_post_screen.dart'
    as _i3;
import 'package:edu_land/src/feature/screen/forum/detail_post/detail_post_screen.dart'
    as _i5;
import 'package:edu_land/src/feature/screen/forum/list_forum/list_forum_screen.dart'
    as _i6;
import 'package:edu_land/src/feature/screen/login_and_register/login_and_register_screen.dart'
    as _i7;
import 'package:edu_land/src/feature/screen/play_quizz/play_quiz_screen.dart'
    as _i9;
import 'package:edu_land/src/feature/screen/question_set_detail/question_set_detail_screen.dart'
    as _i10;
import 'package:edu_land/src/feature/screen/result_play_quizz_screen/result_play_quiz_screen.dart'
    as _i12;
import 'package:edu_land/src/feature/screen/review_quiz_played/review_quiz_played_screen.dart'
    as _i13;
import 'package:edu_land/src/feature/screen/select_role/select_role_screen.dart'
    as _i14;
import 'package:edu_land/src/feature/screen/splash/splash_screen.dart' as _i15;
import 'package:edu_land/src/feature/screen/student/home/student_home_screen.dart'
    as _i22;
import 'package:edu_land/src/feature/screen/student/question_set_in_class/question_set_in_class_screen.dart'
    as _i11;
import 'package:edu_land/src/feature/screen/student/student_homepage_screen.dart'
    as _i16;
import 'package:edu_land/src/feature/screen/teacher/class_list/teacher_class_list_screen.dart'
    as _i17;
import 'package:edu_land/src/feature/screen/teacher/classroom_detail/classroom_detail_screen.dart'
    as _i1;
import 'package:edu_land/src/feature/screen/teacher/create_class/create_class_screen.dart'
    as _i2;
import 'package:edu_land/src/feature/screen/teacher/my_quizz/my_quiz_screen.dart'
    as _i8;
import 'package:edu_land/src/feature/screen/teacher/teacher_homepage_screen.dart'
    as _i18;
import 'package:edu_land/src/feature/screen/welcome/welcome_screen.dart'
    as _i19;
import 'package:edu_land/src/model/scoring_model.dart' as _i23;
import 'package:flutter/material.dart' as _i21;

/// generated route for
/// [_i1.ClassroomDetailScreen]
class ClassroomDetailRoute
    extends _i20.PageRouteInfo<ClassroomDetailRouteArgs> {
  ClassroomDetailRoute({
    _i21.Key? key,
    required int id,
    required String title,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          ClassroomDetailRoute.name,
          args: ClassroomDetailRouteArgs(
            key: key,
            id: id,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ClassroomDetailRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClassroomDetailRouteArgs>();
      return _i1.ClassroomDetailScreen(
        key: args.key,
        id: args.id,
        title: args.title,
      );
    },
  );
}

class ClassroomDetailRouteArgs {
  const ClassroomDetailRouteArgs({
    this.key,
    required this.id,
    required this.title,
  });

  final _i21.Key? key;

  final int id;

  final String title;

  @override
  String toString() {
    return 'ClassroomDetailRouteArgs{key: $key, id: $id, title: $title}';
  }
}

/// generated route for
/// [_i2.CreateClassScreen]
class CreateClassRoute extends _i20.PageRouteInfo<CreateClassRouteArgs> {
  CreateClassRoute({
    _i21.Key? key,
    required _i21.VoidCallback success,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          CreateClassRoute.name,
          args: CreateClassRouteArgs(
            key: key,
            success: success,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateClassRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateClassRouteArgs>();
      return _i2.CreateClassScreen(
        key: args.key,
        success: args.success,
      );
    },
  );
}

class CreateClassRouteArgs {
  const CreateClassRouteArgs({
    this.key,
    required this.success,
  });

  final _i21.Key? key;

  final _i21.VoidCallback success;

  @override
  String toString() {
    return 'CreateClassRouteArgs{key: $key, success: $success}';
  }
}

/// generated route for
/// [_i3.CreatePostScreen]
class CreatePostRoute extends _i20.PageRouteInfo<CreatePostRouteArgs> {
  CreatePostRoute({
    _i21.Key? key,
    required _i21.VoidCallback onSuccess,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          CreatePostRoute.name,
          args: CreatePostRouteArgs(
            key: key,
            onSuccess: onSuccess,
          ),
          initialChildren: children,
        );

  static const String name = 'CreatePostRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreatePostRouteArgs>();
      return _i3.CreatePostScreen(
        key: args.key,
        onSuccess: args.onSuccess,
      );
    },
  );
}

class CreatePostRouteArgs {
  const CreatePostRouteArgs({
    this.key,
    required this.onSuccess,
  });

  final _i21.Key? key;

  final _i21.VoidCallback onSuccess;

  @override
  String toString() {
    return 'CreatePostRouteArgs{key: $key, onSuccess: $onSuccess}';
  }
}

/// generated route for
/// [_i4.CreateQuestionSetScreen]
class CreateQuestionSetRoute
    extends _i20.PageRouteInfo<CreateQuestionSetRouteArgs> {
  CreateQuestionSetRoute({
    _i21.Key? key,
    int? classId,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          CreateQuestionSetRoute.name,
          args: CreateQuestionSetRouteArgs(
            key: key,
            classId: classId,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateQuestionSetRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateQuestionSetRouteArgs>(
          orElse: () => const CreateQuestionSetRouteArgs());
      return _i4.CreateQuestionSetScreen(
        key: args.key,
        classId: args.classId,
      );
    },
  );
}

class CreateQuestionSetRouteArgs {
  const CreateQuestionSetRouteArgs({
    this.key,
    this.classId,
  });

  final _i21.Key? key;

  final int? classId;

  @override
  String toString() {
    return 'CreateQuestionSetRouteArgs{key: $key, classId: $classId}';
  }
}

/// generated route for
/// [_i5.DetailPostScreen]
class DetailPostRoute extends _i20.PageRouteInfo<DetailPostRouteArgs> {
  DetailPostRoute({
    _i21.Key? key,
    required int id,
    required _i21.VoidCallback onSuccess,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          DetailPostRoute.name,
          args: DetailPostRouteArgs(
            key: key,
            id: id,
            onSuccess: onSuccess,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailPostRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailPostRouteArgs>();
      return _i5.DetailPostScreen(
        key: args.key,
        id: args.id,
        onSuccess: args.onSuccess,
      );
    },
  );
}

class DetailPostRouteArgs {
  const DetailPostRouteArgs({
    this.key,
    required this.id,
    required this.onSuccess,
  });

  final _i21.Key? key;

  final int id;

  final _i21.VoidCallback onSuccess;

  @override
  String toString() {
    return 'DetailPostRouteArgs{key: $key, id: $id, onSuccess: $onSuccess}';
  }
}

/// generated route for
/// [_i6.ListForumScreen]
class ListForumRoute extends _i20.PageRouteInfo<void> {
  const ListForumRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ListForumRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListForumRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i6.ListForumScreen();
    },
  );
}

/// generated route for
/// [_i7.LoginAndRegisterScreen]
class LoginAndRegisterRoute
    extends _i20.PageRouteInfo<LoginAndRegisterRouteArgs> {
  LoginAndRegisterRoute({
    _i21.Key? key,
    _i7.TabItem tabItem = _i7.TabItem.login,
    required _i7.Role role,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          LoginAndRegisterRoute.name,
          args: LoginAndRegisterRouteArgs(
            key: key,
            tabItem: tabItem,
            role: role,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginAndRegisterRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginAndRegisterRouteArgs>();
      return _i7.LoginAndRegisterScreen(
        key: args.key,
        tabItem: args.tabItem,
        role: args.role,
      );
    },
  );
}

class LoginAndRegisterRouteArgs {
  const LoginAndRegisterRouteArgs({
    this.key,
    this.tabItem = _i7.TabItem.login,
    required this.role,
  });

  final _i21.Key? key;

  final _i7.TabItem tabItem;

  final _i7.Role role;

  @override
  String toString() {
    return 'LoginAndRegisterRouteArgs{key: $key, tabItem: $tabItem, role: $role}';
  }
}

/// generated route for
/// [_i8.MyQuizScreen]
class MyQuizRoute extends _i20.PageRouteInfo<void> {
  const MyQuizRoute({List<_i20.PageRouteInfo>? children})
      : super(
          MyQuizRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyQuizRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i8.MyQuizScreen();
    },
  );
}

/// generated route for
/// [_i9.PlayQuizScreen]
class PlayQuizRoute extends _i20.PageRouteInfo<PlayQuizRouteArgs> {
  PlayQuizRoute({
    _i21.Key? key,
    required int idQuestionSet,
    required String title,
    int? classId,
    _i21.VoidCallback? onSubmit,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          PlayQuizRoute.name,
          args: PlayQuizRouteArgs(
            key: key,
            idQuestionSet: idQuestionSet,
            title: title,
            classId: classId,
            onSubmit: onSubmit,
          ),
          initialChildren: children,
        );

  static const String name = 'PlayQuizRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlayQuizRouteArgs>();
      return _i9.PlayQuizScreen(
        key: args.key,
        idQuestionSet: args.idQuestionSet,
        title: args.title,
        classId: args.classId,
        onSubmit: args.onSubmit,
      );
    },
  );
}

class PlayQuizRouteArgs {
  const PlayQuizRouteArgs({
    this.key,
    required this.idQuestionSet,
    required this.title,
    this.classId,
    this.onSubmit,
  });

  final _i21.Key? key;

  final int idQuestionSet;

  final String title;

  final int? classId;

  final _i21.VoidCallback? onSubmit;

  @override
  String toString() {
    return 'PlayQuizRouteArgs{key: $key, idQuestionSet: $idQuestionSet, title: $title, classId: $classId, onSubmit: $onSubmit}';
  }
}

/// generated route for
/// [_i10.QuestionSetDetailScreen]
class QuestionSetDetailRoute
    extends _i20.PageRouteInfo<QuestionSetDetailRouteArgs> {
  QuestionSetDetailRoute({
    _i21.Key? key,
    required _i22.Category category,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          QuestionSetDetailRoute.name,
          args: QuestionSetDetailRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionSetDetailRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QuestionSetDetailRouteArgs>();
      return _i10.QuestionSetDetailScreen(
        key: args.key,
        category: args.category,
      );
    },
  );
}

class QuestionSetDetailRouteArgs {
  const QuestionSetDetailRouteArgs({
    this.key,
    required this.category,
  });

  final _i21.Key? key;

  final _i22.Category category;

  @override
  String toString() {
    return 'QuestionSetDetailRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i11.QuestionSetInClassScreen]
class QuestionSetInClassRoute
    extends _i20.PageRouteInfo<QuestionSetInClassRouteArgs> {
  QuestionSetInClassRoute({
    _i21.Key? key,
    required int id,
    required String name,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          QuestionSetInClassRoute.name,
          args: QuestionSetInClassRouteArgs(
            key: key,
            id: id,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionSetInClassRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QuestionSetInClassRouteArgs>();
      return _i11.QuestionSetInClassScreen(
        key: args.key,
        id: args.id,
        name: args.name,
      );
    },
  );
}

class QuestionSetInClassRouteArgs {
  const QuestionSetInClassRouteArgs({
    this.key,
    required this.id,
    required this.name,
  });

  final _i21.Key? key;

  final int id;

  final String name;

  @override
  String toString() {
    return 'QuestionSetInClassRouteArgs{key: $key, id: $id, name: $name}';
  }
}

/// generated route for
/// [_i12.ResultPlayQuizScreen]
class ResultPlayQuizRoute extends _i20.PageRouteInfo<ResultPlayQuizRouteArgs> {
  ResultPlayQuizRoute({
    _i21.Key? key,
    required _i23.ScoringModel model,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          ResultPlayQuizRoute.name,
          args: ResultPlayQuizRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultPlayQuizRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResultPlayQuizRouteArgs>();
      return _i12.ResultPlayQuizScreen(
        key: args.key,
        model: args.model,
      );
    },
  );
}

class ResultPlayQuizRouteArgs {
  const ResultPlayQuizRouteArgs({
    this.key,
    required this.model,
  });

  final _i21.Key? key;

  final _i23.ScoringModel model;

  @override
  String toString() {
    return 'ResultPlayQuizRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i13.ReviewQuizPlayedScreen]
class ReviewQuizPlayedRoute
    extends _i20.PageRouteInfo<ReviewQuizPlayedRouteArgs> {
  ReviewQuizPlayedRoute({
    _i21.Key? key,
    required int historyId,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          ReviewQuizPlayedRoute.name,
          args: ReviewQuizPlayedRouteArgs(
            key: key,
            historyId: historyId,
          ),
          initialChildren: children,
        );

  static const String name = 'ReviewQuizPlayedRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReviewQuizPlayedRouteArgs>();
      return _i13.ReviewQuizPlayedScreen(
        key: args.key,
        historyId: args.historyId,
      );
    },
  );
}

class ReviewQuizPlayedRouteArgs {
  const ReviewQuizPlayedRouteArgs({
    this.key,
    required this.historyId,
  });

  final _i21.Key? key;

  final int historyId;

  @override
  String toString() {
    return 'ReviewQuizPlayedRouteArgs{key: $key, historyId: $historyId}';
  }
}

/// generated route for
/// [_i14.SelectRoleScreen]
class SelectRoleRoute extends _i20.PageRouteInfo<SelectRoleRouteArgs> {
  SelectRoleRoute({
    _i21.Key? key,
    required bool isRegister,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          SelectRoleRoute.name,
          args: SelectRoleRouteArgs(
            key: key,
            isRegister: isRegister,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectRoleRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SelectRoleRouteArgs>();
      return _i14.SelectRoleScreen(
        key: args.key,
        isRegister: args.isRegister,
      );
    },
  );
}

class SelectRoleRouteArgs {
  const SelectRoleRouteArgs({
    this.key,
    required this.isRegister,
  });

  final _i21.Key? key;

  final bool isRegister;

  @override
  String toString() {
    return 'SelectRoleRouteArgs{key: $key, isRegister: $isRegister}';
  }
}

/// generated route for
/// [_i15.SplashScreen]
class SplashRoute extends _i20.PageRouteInfo<void> {
  const SplashRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i15.SplashScreen();
    },
  );
}

/// generated route for
/// [_i16.StudentHomepageScreen]
class StudentHomepageRoute extends _i20.PageRouteInfo<void> {
  const StudentHomepageRoute({List<_i20.PageRouteInfo>? children})
      : super(
          StudentHomepageRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentHomepageRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i16.StudentHomepageScreen();
    },
  );
}

/// generated route for
/// [_i17.TeacherClassListScreen]
class TeacherClassListRoute extends _i20.PageRouteInfo<void> {
  const TeacherClassListRoute({List<_i20.PageRouteInfo>? children})
      : super(
          TeacherClassListRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeacherClassListRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i17.TeacherClassListScreen();
    },
  );
}

/// generated route for
/// [_i18.TeacherHomepageScreen]
class TeacherHomepageRoute extends _i20.PageRouteInfo<void> {
  const TeacherHomepageRoute({List<_i20.PageRouteInfo>? children})
      : super(
          TeacherHomepageRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeacherHomepageRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i18.TeacherHomepageScreen();
    },
  );
}

/// generated route for
/// [_i19.WelcomeScreen]
class WelcomeRoute extends _i20.PageRouteInfo<void> {
  const WelcomeRoute({List<_i20.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i19.WelcomeScreen();
    },
  );
}
