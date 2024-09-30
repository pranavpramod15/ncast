import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  const CustomElevatedButton(
      {super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff4C0099),
        minimumSize: Size(context.width - 73, context.height * 0.067),
      ),
      child: Text(buttonText),
    );
  }
}
