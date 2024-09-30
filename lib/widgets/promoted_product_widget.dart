import 'package:flutter/material.dart';

class PromotedWidget extends StatelessWidget {
  final String imgPath;
  const PromotedWidget({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.height * 0.33,
        decoration: ShapeDecoration(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.fill)));
  }
}
