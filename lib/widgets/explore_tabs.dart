import 'package:flutter/material.dart';

class ExploreTabs extends StatelessWidget {
  final String title;
  final bool selectedContainer;
  const ExploreTabs(
      {super.key, required this.title, this.selectedContainer = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 50,
      width: 130,
      decoration: ShapeDecoration(
          color: selectedContainer
              ? const Color(0xffFF5757)
              : const Color(0xffFF5757).withOpacity(0.3),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Center(
          child: Text(
        title,
        style:
            TextStyle(color: selectedContainer ? Colors.white : Colors.black),
      )),
    );
  }
}
