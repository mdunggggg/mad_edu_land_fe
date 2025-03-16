// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:edu_land/src/feature/screen/login_and_register/login_and_register_screen.dart'
    as _i2;
import 'package:edu_land/src/feature/screen/select_role/select_role_screen.dart'
    as _i4;
import 'package:edu_land/src/feature/screen/splash/splash_screen.dart' as _i5;
import 'package:edu_land/src/feature/screen/student/home/student_home_screen.dart'
    as _i11;
import 'package:edu_land/src/feature/screen/student/question_set_detail/question_set_detail_screen.dart'
    as _i3;
import 'package:edu_land/src/feature/screen/student/student_homepage_screen.dart'
    as _i6;
import 'package:edu_land/src/feature/screen/teacher/create_class/create_class_screen.dart'
    as _i1;
import 'package:edu_land/src/feature/screen/teacher/teacher_homepage_screen.dart'
    as _i7;
import 'package:edu_land/src/feature/screen/welcome/welcome_screen.dart' as _i8;
import 'package:flutter/material.dart' as _i10;

/// generated route for
/// [_i1.CreateClassScreen]
class CreateClassRoute extends _i9.PageRouteInfo<CreateClassRouteArgs> {
  CreateClassRoute({
    _i10.Key? key,
    required _i10.VoidCallback success,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          CreateClassRoute.name,
          args: CreateClassRouteArgs(
            key: key,
            success: success,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateClassRoute';

  static _i9.PageInfo page = _i9.PageInfo(
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

  final _i10.Key? key;

  final _i10.VoidCallback success;

  @override
  String toString() {
    return 'CreateClassRouteArgs{key: $key, success: $success}';
  }
}

/// generated route for
/// [_i2.LoginAndRegisterScreen]
class LoginAndRegisterRoute
    extends _i9.PageRouteInfo<LoginAndRegisterRouteArgs> {
  LoginAndRegisterRoute({
    _i10.Key? key,
    _i2.TabItem tabItem = _i2.TabItem.login,
    required _i2.Role role,
    List<_i9.PageRouteInfo>? children,
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

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginAndRegisterRouteArgs>();
      return _i2.LoginAndRegisterScreen(
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
    this.tabItem = _i2.TabItem.login,
    required this.role,
  });

  final _i10.Key? key;

  final _i2.TabItem tabItem;

  final _i2.Role role;

  @override
  String toString() {
    return 'LoginAndRegisterRouteArgs{key: $key, tabItem: $tabItem, role: $role}';
  }
}

/// generated route for
/// [_i3.QuestionSetDetailScreen]
class QuestionSetDetailRoute
    extends _i9.PageRouteInfo<QuestionSetDetailRouteArgs> {
  QuestionSetDetailRoute({
    _i10.Key? key,
    required _i11.Category category,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          QuestionSetDetailRoute.name,
          args: QuestionSetDetailRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionSetDetailRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QuestionSetDetailRouteArgs>();
      return _i3.QuestionSetDetailScreen(
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

  final _i10.Key? key;

  final _i11.Category category;

  @override
  String toString() {
    return 'QuestionSetDetailRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i4.SelectRoleScreen]
class SelectRoleRoute extends _i9.PageRouteInfo<SelectRoleRouteArgs> {
  SelectRoleRoute({
    _i10.Key? key,
    required bool isRegister,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          SelectRoleRoute.name,
          args: SelectRoleRouteArgs(
            key: key,
            isRegister: isRegister,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectRoleRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SelectRoleRouteArgs>();
      return _i4.SelectRoleScreen(
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

  final _i10.Key? key;

  final bool isRegister;

  @override
  String toString() {
    return 'SelectRoleRouteArgs{key: $key, isRegister: $isRegister}';
  }
}

/// generated route for
/// [_i5.SplashScreen]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.SplashScreen();
    },
  );
}

/// generated route for
/// [_i6.StudentHomepageScreen]
class StudentHomepageRoute extends _i9.PageRouteInfo<void> {
  const StudentHomepageRoute({List<_i9.PageRouteInfo>? children})
      : super(
          StudentHomepageRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentHomepageRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.StudentHomepageScreen();
    },
  );
}

/// generated route for
/// [_i7.TeacherHomepageScreen]
class TeacherHomepageRoute extends _i9.PageRouteInfo<void> {
  const TeacherHomepageRoute({List<_i9.PageRouteInfo>? children})
      : super(
          TeacherHomepageRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeacherHomepageRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.TeacherHomepageScreen();
    },
  );
}

/// generated route for
/// [_i8.WelcomeScreen]
class WelcomeRoute extends _i9.PageRouteInfo<void> {
  const WelcomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.WelcomeScreen();
    },
  );
}
