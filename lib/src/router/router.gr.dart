// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:edu_land/src/feature/screen/login_and_register/login_and_register_screen.dart'
    as _i2;
import 'package:edu_land/src/feature/screen/select_role/select_role_screen.dart'
    as _i3;
import 'package:edu_land/src/feature/screen/splash/splash_screen.dart' as _i4;
import 'package:edu_land/src/feature/screen/student/student_homepage_screen.dart'
    as _i5;
import 'package:edu_land/src/feature/screen/teacher/create_class/create_class_screen.dart'
    as _i1;
import 'package:edu_land/src/feature/screen/teacher/teacher_homepage_screen.dart'
    as _i6;
import 'package:edu_land/src/feature/screen/welcome/welcome_screen.dart' as _i7;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.CreateClassScreen]
class CreateClassRoute extends _i8.PageRouteInfo<CreateClassRouteArgs> {
  CreateClassRoute({
    _i9.Key? key,
    required _i9.VoidCallback success,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          CreateClassRoute.name,
          args: CreateClassRouteArgs(
            key: key,
            success: success,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateClassRoute';

  static _i8.PageInfo page = _i8.PageInfo(
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

  final _i9.Key? key;

  final _i9.VoidCallback success;

  @override
  String toString() {
    return 'CreateClassRouteArgs{key: $key, success: $success}';
  }
}

/// generated route for
/// [_i2.LoginAndRegisterScreen]
class LoginAndRegisterRoute
    extends _i8.PageRouteInfo<LoginAndRegisterRouteArgs> {
  LoginAndRegisterRoute({
    _i9.Key? key,
    _i2.TabItem tabItem = _i2.TabItem.login,
    required _i2.Role role,
    List<_i8.PageRouteInfo>? children,
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

  static _i8.PageInfo page = _i8.PageInfo(
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

  final _i9.Key? key;

  final _i2.TabItem tabItem;

  final _i2.Role role;

  @override
  String toString() {
    return 'LoginAndRegisterRouteArgs{key: $key, tabItem: $tabItem, role: $role}';
  }
}

/// generated route for
/// [_i3.SelectRoleScreen]
class SelectRoleRoute extends _i8.PageRouteInfo<SelectRoleRouteArgs> {
  SelectRoleRoute({
    _i9.Key? key,
    required bool isRegister,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          SelectRoleRoute.name,
          args: SelectRoleRouteArgs(
            key: key,
            isRegister: isRegister,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectRoleRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SelectRoleRouteArgs>();
      return _i3.SelectRoleScreen(
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

  final _i9.Key? key;

  final bool isRegister;

  @override
  String toString() {
    return 'SelectRoleRouteArgs{key: $key, isRegister: $isRegister}';
  }
}

/// generated route for
/// [_i4.SplashScreen]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.SplashScreen();
    },
  );
}

/// generated route for
/// [_i5.StudentHomepageScreen]
class StudentHomepageRoute extends _i8.PageRouteInfo<void> {
  const StudentHomepageRoute({List<_i8.PageRouteInfo>? children})
      : super(
          StudentHomepageRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentHomepageRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.StudentHomepageScreen();
    },
  );
}

/// generated route for
/// [_i6.TeacherHomepageScreen]
class TeacherHomepageRoute extends _i8.PageRouteInfo<void> {
  const TeacherHomepageRoute({List<_i8.PageRouteInfo>? children})
      : super(
          TeacherHomepageRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeacherHomepageRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.TeacherHomepageScreen();
    },
  );
}

/// generated route for
/// [_i7.WelcomeScreen]
class WelcomeRoute extends _i8.PageRouteInfo<void> {
  const WelcomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.WelcomeScreen();
    },
  );
}
