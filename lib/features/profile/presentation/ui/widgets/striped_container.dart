import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';
import 'package:ncast/gen/assets.gen.dart';

class StripedContainer extends StatelessWidget {
  final Widget child;
  const StripedContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            decoration: ShapeDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.images.stripes.path)),
                color: const Color(0xff4c0099),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            margin: const EdgeInsets.only(left: 15, right: 15, top: 40),
            height: context.dynamicHeight(0.34),
            child: child));
  }
}
