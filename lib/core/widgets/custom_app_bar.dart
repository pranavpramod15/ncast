import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';

import 'package:ncast/gen/assets.gen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AssetImage image;
  final bool showAlert;
  const CustomAppBar({super.key, required this.image, required this.showAlert});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      automaticallyImplyLeading: false,
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            top: 15,
            right: 15,
          ),
          child: Stack(
            children: [
              Container(
                height: context.dynamicHeight(0.05),
                width: context.dynamicWidth(0.1),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    image: DecorationImage(image: image),
                    shape: BoxShape.circle),
              ),
              Positioned(
                bottom: context.dynamicWidth(0.008),
                left: 13,
                child: Container(
                  height: 60,
                  width: 40,
                  decoration: showAlert
                      ? BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Assets.images.alert.path)),
                          shape: BoxShape.circle)
                      : null,
                ),
              ),
            ],
          ),
        )
      ],
      title: Image.asset(
        Assets.images.appTitle.path,
        scale: 1.4,
      ),
    );
  }
}
