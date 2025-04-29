import 'package:auto_route/auto_route.dart';
import 'package:edu_land/src/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page),
    AutoRoute(page: WelcomeRoute.page),
    AutoRoute(page: LoginAndRegisterRoute.page),
    AutoRoute(page: SelectRoleRoute.page),
    AutoRoute(page: StudentHomepageRoute.page),
    AutoRoute(page: TeacherHomepageRoute.page),
    AutoRoute(page: CreateClassRoute.page),
    AutoRoute(page: QuestionSetDetailRoute.page),
    AutoRoute(page: PlayQuizRoute.page),
    AutoRoute(page: ResultPlayQuizRoute.page),
    AutoRoute(page: CreateQuestionSetRoute.page),
    AutoRoute(page: MyQuizRoute.page),
    AutoRoute(page: ClassroomDetailRoute.page),
    AutoRoute(page: ReviewQuizPlayedRoute.page),
    AutoRoute(page: TeacherClassListRoute.page),
    AutoRoute(page: CreatePostRoute.page),
    AutoRoute(page: DetailPostRoute.page),
    AutoRoute(page: QuestionSetInClassRoute.page),
  ];
}
