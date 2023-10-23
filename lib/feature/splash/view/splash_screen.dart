import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/asset_paths.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(appAssets.netflixLogo),
      ),
    );
  }
}
