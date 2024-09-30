import 'package:flutter/material.dart';

class TodayTrendingWidget extends StatelessWidget {
  final String imgPath;
  const TodayTrendingWidget({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.height * 0.25,
        decoration: ShapeDecoration(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.fill)));
  }
}
