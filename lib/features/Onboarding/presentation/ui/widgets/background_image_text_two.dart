import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';

import 'package:ncast/gen/assets.gen.dart';

class BackgroundImageTextTwo extends StatelessWidget {
  const BackgroundImageTextTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: context.width >= 375
          ? context.dynamicHeight(0.32)
          : context.dynamicHeight(0.34),
      child: Assets.images.backgroundTwo.image(),
    );
  }
}
