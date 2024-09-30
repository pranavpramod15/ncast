import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';

class NavBar extends StatelessWidget {
  final List<Widget> children;
  const NavBar({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.11),
      decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(left: 40, right: 40),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2),
          child: Container(
              decoration: ShapeDecoration(
                  color: const Color(0xff4c0099).withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: children,
                          )
                        ]))
                  ])),
        ),
      ),
    );
  }
}
