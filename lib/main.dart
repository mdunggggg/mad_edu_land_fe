import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:edu_land/src/data/local/app_shared_preference.dart';
import 'package:edu_land/src/feature/screen/result_play_quizz_screen/result_play_quiz_screen.dart';
import 'package:edu_land/src/model/scoring_model.dart';
import 'package:edu_land/src/resources/constant/app_constants.dart';
import 'package:edu_land/src/router/router.dart';
import 'package:edu_land/src/router/router.gr.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final initJobs = <Future>[
    EasyLocalization.ensureInitialized(),
    AppSharedPreference.instance.initSharedPreferences(),
  ];
  HttpOverrides.global = MyHttpOverrides();
  Future.wait(initJobs).then(
    (value) {
      runApp(
        EasyLocalization(
          supportedLocales: const [Locale('en'), Locale('vi')],
          startLocale: const Locale('vi'),
          fallbackLocale: const Locale('vi'),
          path: AppConstants.translationsPath,
          child: const MainApp(),
        ),
      );
    },
  );
}

final AppRouter appRouter = AppRouter();
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context)
          .copyWith(textScaler: const TextScaler.linear(1.0)),
      child: MaterialApp.router(
        routerConfig: appRouter.config(
          deepLinkBuilder: (_) => DeepLink(_mapRouteToPageRouteInfo()),
        ),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}

List<PageRouteInfo> _mapRouteToPageRouteInfo() {
  return [const WelcomeRoute()];
}
