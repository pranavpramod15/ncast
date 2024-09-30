import 'package:flutter/material.dart';
import 'package:ncast/gen/assets.gen.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircleAvatar(
      radius: 70,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 65,
        child: Image(image: AssetImage(Assets.images.profilePhoto.path)),
      ),
    ));
  }
}
