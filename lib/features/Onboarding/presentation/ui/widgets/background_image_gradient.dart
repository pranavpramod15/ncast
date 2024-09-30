import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';
import 'package:ncast/gen/assets.gen.dart';

class BackgroundImageGradient extends StatelessWidget {
  const BackgroundImageGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.width >= 375
          ? context.dynamicHeight(0.65)
          : context.dynamicHeight(0.69),
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: Assets.images.headphoneDynamicGradient.provider()),
      ),
    );
  }
}
