import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';


class OnboardingCaption extends StatelessWidget {
  final String title;
  final String description;
  const OnboardingCaption(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: context.dynamicHeight(0.5),
      left: context.dynamicWidth(0.13),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: const Color.fromRGBO(31, 31, 31, 100),
                fontSize: context.width >= 375 ? 33 : 30,
                fontWeight: FontWeight.bold),
          ),
          Text(
            textAlign: TextAlign.center,
            description,
            style: TextStyle(fontSize: context.width >= 375 ? 13 : 12),
          ),
        ],
      ),
    );
  }
}
