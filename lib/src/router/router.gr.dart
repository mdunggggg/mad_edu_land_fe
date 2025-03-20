// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:edu_land/src/feature/screen/create_question_set/create_question_set_screen.dart'
    as _i2;
import 'package:edu_land/src/feature/screen/login_and_register/login_and_register_screen.dart'
    as _i3;
import 'package:edu_land/src/feature/screen/play_quizz/play_quiz_screen.dart'
    as _i4;
import 'package:edu_land/src/feature/screen/question_set_detail/question_set_detail_screen.dart'
    as _i5;
import 'package:edu_land/src/feature/screen/result_play_quizz_screen/result_play_quiz_screen.dart'
    as _i6;
import 'package:edu_land/src/feature/screen/select_role/select_role_screen.dart'
    as _i7;
import 'package:edu_land/src/feature/screen/splash/splash_screen.dart' as _i8;
import 'package:edu_land/src/feature/screen/student/home/student_home_screen.dart'
    as _i14;
import 'package:edu_land/src/feature/screen/student/student_homepage_screen.dart'
    as _i9;
import 'package:edu_land/src/feature/screen/teacher/create_class/create_class_screen.dart'
    as _i1;
import 'package:edu_land/src/feature/screen/teacher/teacher_homepage_screen.dart'
    as _i10;
import 'package:edu_land/src/feature/screen/welcome/welcome_screen.dart'
    as _i11;
import 'package:edu_land/src/model/scoring_model.dart' as _i15;
import 'package:flutter/material.dart' as _i13;

/// generated route for
/// [_i1.CreateClassScreen]
class CreateClassRoute extends _i12.PageRouteInfo<CreateClassRouteArgs> {
  CreateClassRoute({
    _i13.Key? key,
    required _i13.VoidCallback success,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CreateClassRoute.name,
          args: CreateClassRouteArgs(
            key: key,
            success: success,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateClassRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateClassRouteArgs>();
      return _i1.CreateClassScreen(
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

  final _i13.Key? key;

  final _i13.VoidCallback success;

  @override
  String toString() {
    return 'CreateClassRouteArgs{key: $key, success: $success}';
  }
}

/// generated route for
/// [_i2.CreateQuestionSetScreen]
class CreateQuestionSetRoute extends _i12.PageRouteInfo<void> {
  const CreateQuestionSetRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CreateQuestionSetRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateQuestionSetRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i2.CreateQuestionSetScreen();
    },
  );
}

/// generated route for
/// [_i3.LoginAndRegisterScreen]
class LoginAndRegisterRoute
    extends _i12.PageRouteInfo<LoginAndRegisterRouteArgs> {
  LoginAndRegisterRoute({
    _i13.Key? key,
    _i3.TabItem tabItem = _i3.TabItem.login,
    required _i3.Role role,
    List<_i12.PageRouteInfo>? children,
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

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginAndRegisterRouteArgs>();
      return _i3.LoginAndRegisterScreen(
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
    this.tabItem = _i3.TabItem.login,
    required this.role,
  });

  final _i13.Key? key;

  final _i3.TabItem tabItem;

  final _i3.Role role;

  @override
  String toString() {
    return 'LoginAndRegisterRouteArgs{key: $key, tabItem: $tabItem, role: $role}';
  }
}

/// generated route for
/// [_i4.PlayQuizScreen]
class PlayQuizRoute extends _i12.PageRouteInfo<PlayQuizRouteArgs> {
  PlayQuizRoute({
    _i13.Key? key,
    required int idQuestionSet,
    required String title,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          PlayQuizRoute.name,
          args: PlayQuizRouteArgs(
            key: key,
            idQuestionSet: idQuestionSet,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'PlayQuizRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlayQuizRouteArgs>();
      return _i4.PlayQuizScreen(
        key: args.key,
        idQuestionSet: args.idQuestionSet,
        title: args.title,
      );
    },
  );
}

class PlayQuizRouteArgs {
  const PlayQuizRouteArgs({
    this.key,
    required this.idQuestionSet,
    required this.title,
  });

  final _i13.Key? key;

  final int idQuestionSet;

  final String title;

  @override
  String toString() {
    return 'PlayQuizRouteArgs{key: $key, idQuestionSet: $idQuestionSet, title: $title}';
  }
}

/// generated route for
/// [_i5.QuestionSetDetailScreen]
class QuestionSetDetailRoute
    extends _i12.PageRouteInfo<QuestionSetDetailRouteArgs> {
  QuestionSetDetailRoute({
    _i13.Key? key,
    required _i14.Category category,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          QuestionSetDetailRoute.name,
          args: QuestionSetDetailRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionSetDetailRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QuestionSetDetailRouteArgs>();
      return _i5.QuestionSetDetailScreen(
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

  final _i13.Key? key;

  final _i14.Category category;

  @override
  String toString() {
    return 'QuestionSetDetailRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i6.ResultPlayQuizScreen]
class ResultPlayQuizRoute extends _i12.PageRouteInfo<ResultPlayQuizRouteArgs> {
  ResultPlayQuizRoute({
    _i13.Key? key,
    required _i15.ScoringModel model,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          ResultPlayQuizRoute.name,
          args: ResultPlayQuizRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultPlayQuizRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResultPlayQuizRouteArgs>();
      return _i6.ResultPlayQuizScreen(
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

  final _i13.Key? key;

  final _i15.ScoringModel model;

  @override
  String toString() {
    return 'ResultPlayQuizRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i7.SelectRoleScreen]
class SelectRoleRoute extends _i12.PageRouteInfo<SelectRoleRouteArgs> {
  SelectRoleRoute({
    _i13.Key? key,
    required bool isRegister,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          SelectRoleRoute.name,
          args: SelectRoleRouteArgs(
            key: key,
            isRegister: isRegister,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectRoleRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SelectRoleRouteArgs>();
      return _i7.SelectRoleScreen(
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

  final _i13.Key? key;

  final bool isRegister;

  @override
  String toString() {
    return 'SelectRoleRouteArgs{key: $key, isRegister: $isRegister}';
  }
}

/// generated route for
/// [_i8.SplashScreen]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i8.SplashScreen();
    },
  );
}

/// generated route for
/// [_i9.StudentHomepageScreen]
class StudentHomepageRoute extends _i12.PageRouteInfo<void> {
  const StudentHomepageRoute({List<_i12.PageRouteInfo>? children})
      : super(
          StudentHomepageRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentHomepageRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i9.StudentHomepageScreen();
    },
  );
}

/// generated route for
/// [_i10.TeacherHomepageScreen]
class TeacherHomepageRoute extends _i12.PageRouteInfo<void> {
  const TeacherHomepageRoute({List<_i12.PageRouteInfo>? children})
      : super(
          TeacherHomepageRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeacherHomepageRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.TeacherHomepageScreen();
    },
  );
}

/// generated route for
/// [_i11.WelcomeScreen]
class WelcomeRoute extends _i12.PageRouteInfo<void> {
  const WelcomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.WelcomeScreen();
    },
  );
}
