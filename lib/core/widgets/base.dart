import 'package:flutter/material.dart';
import 'package:ncast/core/widgets/custom_app_bar.dart';

import 'package:ncast/core/widgets/nav_bar.dart';
import 'package:ncast/core/widgets/nav_bar_item.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:ncast/features/explore/presentation/ui/explore_screen.dart';
import 'package:ncast/features/favourites/presentation/ui/favourites_screen.dart';
import 'package:ncast/features/homescreen/presentation/ui/home_screen.dart';

import 'package:ncast/features/profile/presentation/ui/profile_screen.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int index = 0;

  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          showAlert: index == 3 ? false : true,
          image: index == 3
              ? AssetImage("assets/images/settings.png")
              : AssetImage("assets/images/notifications.png")),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) {
              setState(
                () {
                  index = value;
                },
              );
            },
            children: const [
              HomeScreen(),
              ExploreScreen(),
              FavouriteScreen(),
              ProfileScreen(),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: NavBar(children: [
        NavBarItem(
            pageController: pageController,
            moveTo: 0,
            index: index,
            image: Assets.svg.headphone),
        NavBarItem(
            index: index,
            image: Assets.svg.explore,
            pageController: pageController,
            moveTo: 1),
        NavBarItem(
            index: index,
            image: Assets.svg.heart,
            pageController: pageController,
            moveTo: 2),
        NavBarItem(
            index: index,
            image: Assets.svg.person,
            pageController: pageController,
            moveTo: 3),
      ]),
    );
  }
}
