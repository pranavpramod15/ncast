import 'package:flutter/material.dart';
import 'package:ncast/core/data/podcasts_data.dart';
import 'package:ncast/widgets/trending_podcasts_widget.dart';

class TrendingPodcasts extends StatefulWidget {
  const TrendingPodcasts({super.key});

  @override
  State<TrendingPodcasts> createState() => _TrendingPodcastsState();
}

class _TrendingPodcastsState extends State<TrendingPodcasts> {
  @override
  Widget build(BuildContext context) {
    final PodcastsData podcastsData = PodcastsData();

    return Column(
      children: [
        ...List.generate(
            podcastsData.trendingData.length,
            (index) => PodcastsWidget(
                title: podcastsData.trendingData[index].title,
                subtitle: podcastsData.trendingData[index].subtitle,
                description: podcastsData.trendingData[index].description,
                image: podcastsData.trendingData[index].image))
      ],
    );
  }
}
