import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';

import 'package:ncast/gen/assets.gen.dart';

class HeadphoneImage extends StatelessWidget {
  const HeadphoneImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: context.width >= 375
          ? context.dynamicHeight(0.12)
          : context.dynamicHeight(0.11),
      left: context.dynamicWidth(0.02),
      child: Center(
        child: Container(
          height: context.width >= 375
              ? context.dynamicHeight(0.38)
              : context.dynamicHeight(0.45),
          width: context.width >= 375
              ? context.dynamicHeight(0.38)
              : context.dynamicHeight(0.45),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Assets.images.headphone.provider(),
            ),
          ),
        ),
      ),
    );
  }
}
