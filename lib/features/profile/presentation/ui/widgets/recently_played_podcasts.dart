import 'package:flutter/material.dart';
import 'package:ncast/core/data/podcasts_data.dart';
import 'package:ncast/widgets/trending_podcasts_widget.dart';

class RecentlyPlayedPodcasts extends StatefulWidget {
  const RecentlyPlayedPodcasts({super.key});

  @override
  State<RecentlyPlayedPodcasts> createState() => _RecentlyPlayedPodcastsState();
}

class _RecentlyPlayedPodcastsState extends State<RecentlyPlayedPodcasts> {
  @override
  Widget build(BuildContext context) {
    final PodcastsData podcastsData = PodcastsData();
    return Column(
      children: [
        ...List.generate(
          podcastsData.recentlyPlayedPodcasts.length,
          (index) => PodcastsWidget(
              title: podcastsData.recentlyPlayedPodcasts[index].title,
              subtitle: podcastsData.recentlyPlayedPodcasts[index].subtitle,
              description:
                  podcastsData.recentlyPlayedPodcasts[index].description,
              image: podcastsData.recentlyPlayedPodcasts[index].image),
        )
      ],
    );
  }
}
