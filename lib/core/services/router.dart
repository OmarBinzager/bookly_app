


import 'package:bookly/core/constant/routes.dart';
import 'package:bookly/features/home/presentation/home_view.dart';
import 'package:go_router/go_router.dart';



final router = GoRouter(
  initialLocation: '/${Routes.home}',
  routes: [
    GoRoute(
      name: Routes.home,
      path: '/${Routes.home}',
      builder: (context, state) => HomeView(),
    )
  ]
);