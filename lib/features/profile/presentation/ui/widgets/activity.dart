import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ncast/core/extensions/context_extension.dart';
import 'package:ncast/features/profile/presentation/ui/widgets/activity_count.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ActivityCount(
            count: context.tr.likedPodcastsCount,
            title: context.tr.titleLikedPodcasts,
          ),
          const Divider(),
          ActivityCount(
              count: context.tr.followerCount, title: context.tr.titleFollowing)
        ],
      ),
    );
  }
}
