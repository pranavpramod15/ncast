import 'package:flutter/material.dart';
import 'package:ncast/features/profile/presentation/ui/widgets/profile_photo.dart';
import 'package:ncast/features/profile/presentation/ui/widgets/user_profile.dart';

class ProfileStack extends StatelessWidget {
  const ProfileStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [UserProfile(), ProfilePhoto()],
    );
  }
}
