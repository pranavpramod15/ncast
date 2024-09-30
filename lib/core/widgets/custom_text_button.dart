import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';

class CustomTextButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  const CustomTextButton({super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xff4C0099),
        minimumSize: Size(context.width - 73, context.height * 0.067),
      ),
      child: Text(buttonText),
    );
  }
}
