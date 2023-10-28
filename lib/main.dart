import 'package:flutter/material.dart';
import 'package:netflix_clone/configs/theme.dart';

import 'configs/app_router/router.dart';

void main() {
  runApp(const NetflixClone());
}

class NetflixClone extends StatelessWidget {
  const NetflixClone({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      // Set the theme mode to light.
      themeMode: ThemeMode.dark,
      // Set the theme to an instance of the AppTheme.
      theme: appTheme(),
      // Disable the debug banner.
      debugShowCheckedModeBanner: false,
      // Set the router delegate to an instance of the AppRouter delegate.
      routerDelegate: appRouter.delegate(),
      // Set the route information parser to an instance of the AppRouter default route parser.
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
