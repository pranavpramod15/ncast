import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarItem extends StatefulWidget {
  final int index;
  final int moveTo;
  final String image;
  final PageController pageController;
  const NavBarItem(
      {super.key,
      required this.index,
      required this.image,
      required this.pageController,
      required this.moveTo});

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            widget.pageController.jumpToPage(widget.moveTo);
          },
          child: SvgPicture.asset(widget.image,
              colorFilter: ColorFilter.mode(
                  widget.index == widget.moveTo
                      ? const Color(0xff4c0099)
                      : const Color.fromRGBO(31, 31, 31, 100),
                  BlendMode.srcIn)),
        ),
        const SizedBox(
          height: 5,
        ),
        widget.index == widget.moveTo
            ? const Icon(
                Icons.circle,
                size: 7,
                color: Color(0xff4c0099),
              )
            : Container()
      ],
    );
  }
}
