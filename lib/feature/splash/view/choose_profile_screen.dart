import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/common/widget_functions.dart';
import 'package:responsive_grid/responsive_grid.dart';

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                AppAssets.netflixLogo,
                width: 138,
                height: 37,
              ),
              addHeight(148),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: ResponsiveGridList(
                      desiredItemWidth: 100,
                      minSpacing: 18,
                      children: List.generate(4, (index) => index + 1)
                          .map(
                            (i) => Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(AppAssets.profilePic(i)),
                                  addHeight(12),
                                  const Text(
                                    'Dele',
                                    style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 0.68,
                                      height: 0.15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
