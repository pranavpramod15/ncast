import 'package:flutter/material.dart';
import 'package:ncast/core/data/podcasts_data.dart';
import 'package:ncast/widgets/trending_podcasts_widget.dart';

class FavouritePodcasts extends StatefulWidget {
  const FavouritePodcasts({super.key});

  @override
  State<FavouritePodcasts> createState() => _FavouritePodcastsState();
}

class _FavouritePodcastsState extends State<FavouritePodcasts> {
  @override
  Widget build(BuildContext context) {
    final PodcastsData podcastsData = PodcastsData();
    return Column(
      children: [
        ...List.generate(
            podcastsData.favouritePodcasts.length,
            (index) => PodcastsWidget(
                title: podcastsData.favouritePodcasts[index].title,
                subtitle: podcastsData.favouritePodcasts[index].subtitle,
                description: podcastsData.favouritePodcasts[index].description,
                image: podcastsData.favouritePodcasts[index].image))
      ],
    );
  }
}
