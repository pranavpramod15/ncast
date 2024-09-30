import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AssetImage image;
  final bool showAlert;
  const CustomAppBar({super.key, required this.image, required this.showAlert});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      automaticallyImplyLeading: false,
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            top: 15,
            right: 15,
          ),
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    image: DecorationImage(image: image),
                    shape: BoxShape.circle),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.width * 0.008,
                left: 13,
                child: Container(
                  height: 60,
                  width: 40,
                  decoration: showAlert
                      ? const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/alert.png")),
                          shape: BoxShape.circle)
                      : null,
                ),
              ),
            ],
          ),
        )
      ],
      title: Image.asset(
        "assets/images/app-title.png",
        scale: 1.4,
      ),
    );
  }
}
