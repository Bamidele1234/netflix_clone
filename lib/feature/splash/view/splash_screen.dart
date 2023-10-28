import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_clone/constants/asset_paths.dart';

import '../../../configs/app_router/router.dart';
import '../../../configs/app_router/router.gr.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reset();
        _controller.forward();

        // Goto the next page
        navPush(context, const ChooseProfileRoute());
      }
    });

    super.initState();
  }

  onLoaded(LottieComposition composition) {
    // Configure the AnimationController with the duration of the
    // Lottie file and start the animation.
    _controller
      ..duration = composition.duration
      ..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 36),
            child: Lottie.asset(
              AppAssets.netflixAnimation,
              controller: _controller,
              onLoaded: onLoaded,
            ),
          ),
        ),
      ),
    );
  }
}
