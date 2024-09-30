import 'package:flutter/material.dart';
import 'package:ncast/core/widgets/section.dart';
import 'package:ncast/core/extensions/context_extension.dart';
import 'package:ncast/features/profile/presentation/ui/widgets/profile_stack.dart';
import 'package:ncast/features/profile/presentation/ui/widgets/recently_played_podcasts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileStack(),
          Section(title: context.tr.sectionRecentlyPlayed),
          const RecentlyPlayedPodcasts()
        ],
      ),
    );
  }
}
