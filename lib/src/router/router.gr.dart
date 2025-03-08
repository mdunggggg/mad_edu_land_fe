// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:edu_land/src/feature/screen/login_and_register/login_and_register_screen.dart'
    as _i1;
import 'package:edu_land/src/feature/screen/select_role/select_role_screen.dart'
    as _i2;
import 'package:edu_land/src/feature/screen/splash/splash_screen.dart' as _i3;
import 'package:edu_land/src/feature/screen/student/home/student_homepage_screen.dart'
    as _i4;
import 'package:edu_land/src/feature/screen/teacher/teacher_homepage_screen.dart'
    as _i5;
import 'package:edu_land/src/feature/screen/welcome/welcome_screen.dart' as _i6;
import 'package:flutter/material.dart' as _i8;

/// generated route for
/// [_i1.LoginAndRegisterScreen]
class LoginAndRegisterRoute
    extends _i7.PageRouteInfo<LoginAndRegisterRouteArgs> {
  LoginAndRegisterRoute({
    _i8.Key? key,
    _i1.TabItem tabItem = _i1.TabItem.login,
    required _i1.Role role,
    List<_i7.PageRouteInfo>? children,
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

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginAndRegisterRouteArgs>();
      return _i1.LoginAndRegisterScreen(
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
    this.tabItem = _i1.TabItem.login,
    required this.role,
  });

  final _i8.Key? key;

  final _i1.TabItem tabItem;

  final _i1.Role role;

  @override
  String toString() {
    return 'LoginAndRegisterRouteArgs{key: $key, tabItem: $tabItem, role: $role}';
  }
}

/// generated route for
/// [_i2.SelectRoleScreen]
class SelectRoleRoute extends _i7.PageRouteInfo<SelectRoleRouteArgs> {
  SelectRoleRoute({
    _i8.Key? key,
    required bool isRegister,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          SelectRoleRoute.name,
          args: SelectRoleRouteArgs(
            key: key,
            isRegister: isRegister,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectRoleRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SelectRoleRouteArgs>();
      return _i2.SelectRoleScreen(
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

  final _i8.Key? key;

  final bool isRegister;

  @override
  String toString() {
    return 'SelectRoleRouteArgs{key: $key, isRegister: $isRegister}';
  }
}

/// generated route for
/// [_i3.SplashScreen]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.SplashScreen();
    },
  );
}

/// generated route for
/// [_i4.StudentHomepageScreen]
class StudentHomepageRoute extends _i7.PageRouteInfo<void> {
  const StudentHomepageRoute({List<_i7.PageRouteInfo>? children})
      : super(
          StudentHomepageRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudentHomepageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.StudentHomepageScreen();
    },
  );
}

/// generated route for
/// [_i5.TeacherHomepageScreen]
class TeacherHomepageRoute extends _i7.PageRouteInfo<void> {
  const TeacherHomepageRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TeacherHomepageRoute.name,
          initialChildren: children,
        );

  static const String name = 'TeacherHomepageRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.TeacherHomepageScreen();
    },
  );
}

/// generated route for
/// [_i6.WelcomeScreen]
class WelcomeRoute extends _i7.PageRouteInfo<void> {
  const WelcomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.WelcomeScreen();
    },
  );
}
