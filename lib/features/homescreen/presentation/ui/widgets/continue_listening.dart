import 'package:flutter/material.dart';
import 'package:ncast/core/data/podcasts_data.dart';
import 'package:ncast/widgets/trending_podcasts_widget.dart';

class ContinueListening extends StatefulWidget {
  const ContinueListening({super.key});

  @override
  State<ContinueListening> createState() => _ContinueListeningState();
}

class _ContinueListeningState extends State<ContinueListening> {
  @override
  Widget build(BuildContext context) {
    final PodcastsData podcastsData = PodcastsData();

    return Column(
      children: [
        ...List.generate(
          podcastsData.continueListeningPodcasts.length,
          (index) => PodcastsWidget(
            title: podcastsData.continueListeningPodcasts[index].title,
            subtitle: podcastsData.continueListeningPodcasts[index].subtitle,
            description:
                podcastsData.continueListeningPodcasts[index].description,
            image: podcastsData.continueListeningPodcasts[index].image,
            isProgressIndicated: podcastsData
                .continueListeningPodcasts[index].isProgressIndicated,
            progressCount:
                podcastsData.continueListeningPodcasts[index].progressCount,
          ),
        ),
      ],
    );
  }
}
