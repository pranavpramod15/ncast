import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';

import 'package:ncast/gen/assets.gen.dart';

class BackgroundImageTextOne extends StatelessWidget {
  const BackgroundImageTextOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: context.dynamicHeight(0.16),
      left: context.width >= 375
          ? context.dynamicWidth(0.18)
          : context.dynamicWidth(0.15),
      child: Assets.images.background.image(),
    );
  }
}
