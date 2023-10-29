import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/app_router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: ChooseProfileRoute.page, initial: true),
      ];
}

Future<void> navPush(
  BuildContext context,
  PageRouteInfo<dynamic>? route,
) async {
  await context.router.push(route!);
}
