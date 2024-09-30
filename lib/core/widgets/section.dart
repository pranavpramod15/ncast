import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String title;
  final bool isButtonEnabled;
  const Section({super.key, required this.title, this.isButtonEnabled = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, top: 10),
          child: Text(title,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        isButtonEnabled
            ? Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Text("See More"))
            : Container()
      ],
    );
  }
}
