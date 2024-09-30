import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        context.tr.userName,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: context.width >= 375 ? 25 : 24),
      ),
    );
  }
}
