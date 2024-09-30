import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:ncast/features/profile/presentation/ui/widgets/activity.dart';
import 'package:ncast/features/profile/presentation/ui/widgets/striped_container.dart';
import 'package:ncast/features/profile/presentation/ui/widgets/user_name.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const StripedContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          UserName(),
          Activity()
        ],
      ),
    );
  }
}
