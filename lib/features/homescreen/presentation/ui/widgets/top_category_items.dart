import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';


class TopCategoryItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const TopCategoryItem(
      {super.key,
      required this.title,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            height: context.dynamicHeight(0.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                )
              ],
            )),
      ],
    );
  }
}
