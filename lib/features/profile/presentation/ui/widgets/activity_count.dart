import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';

class ActivityCount extends StatelessWidget {
  final String count;
  final String title;
  const ActivityCount({super.key, required this.count, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count,
          style: TextStyle(
              color: Colors.white,
              fontSize: context.width >= 375 ? 20 : 16,
              fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: context.width >= 375 ? 20 : 14,
            color: Colors.white38,
          ),
        )
      ],
    );
  }
}
