import 'package:flutter/material.dart';

class Divider extends StatelessWidget {
  const Divider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 1,
      color: Colors.black,
      margin: const EdgeInsets.only(
        left: 25,
        right: 25,
      ),
    );
  }
}
