import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../constants/asset_paths.dart';

@RoutePage()
class ChooseProfilePage extends StatelessWidget {
  const ChooseProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 13),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  AppAssets.netflixLogo,
                  width: 138,
                  height: 37,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
