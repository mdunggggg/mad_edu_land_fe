// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:edu_land/src/feature/screen/login_and_register/login_and_register_screen.dart'
    as _i1;
import 'package:edu_land/src/feature/screen/splash/splash_screen.dart' as _i2;
import 'package:edu_land/src/feature/screen/welcome/welcome_screen.dart' as _i3;
import 'package:flutter/material.dart' as _i5;

/// generated route for
/// [_i1.LoginAndRegisterScreen]
class LoginAndRegisterRoute
    extends _i4.PageRouteInfo<LoginAndRegisterRouteArgs> {
  LoginAndRegisterRoute({
    _i5.Key? key,
    _i1.TabItem tabItem = _i1.TabItem.login,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          LoginAndRegisterRoute.name,
          args: LoginAndRegisterRouteArgs(
            key: key,
            tabItem: tabItem,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginAndRegisterRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginAndRegisterRouteArgs>(
          orElse: () => const LoginAndRegisterRouteArgs());
      return _i1.LoginAndRegisterScreen(
        key: args.key,
        tabItem: args.tabItem,
      );
    },
  );
}

class LoginAndRegisterRouteArgs {
  const LoginAndRegisterRouteArgs({
    this.key,
    this.tabItem = _i1.TabItem.login,
  });

  final _i5.Key? key;

  final _i1.TabItem tabItem;

  @override
  String toString() {
    return 'LoginAndRegisterRouteArgs{key: $key, tabItem: $tabItem}';
  }
}

/// generated route for
/// [_i2.SplashScreen]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.SplashScreen();
    },
  );
}

/// generated route for
/// [_i3.WelcomeScreen]
class WelcomeRoute extends _i4.PageRouteInfo<void> {
  const WelcomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.WelcomeScreen();
    },
  );
}
