


import 'package:bookly/core/constant/routes.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/home/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';



final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: Routes.home,
      path: '/${Routes.home}',
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      name: Routes.splash,
      path: '/',
      builder: (context, state) => SplashView(),
    ),
  ]
);