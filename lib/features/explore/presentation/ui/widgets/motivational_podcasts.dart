import 'package:flutter/widgets.dart';
import 'package:ncast/core/data/podcasts_data.dart';
import 'package:ncast/widgets/trending_podcasts_widget.dart';

class MotivationalPodcasts extends StatefulWidget {
  const MotivationalPodcasts({super.key});

  @override
  State<MotivationalPodcasts> createState() => _MotivationalPodcastsState();
}

class _MotivationalPodcastsState extends State<MotivationalPodcasts> {
  @override
  Widget build(BuildContext context) {
    final PodcastsData podcastsData = PodcastsData();
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(
              podcastsData.motivationPodcasts.length,
              (index) => PodcastsWidget(
                  title: podcastsData.motivationPodcasts[index].title,
                  subtitle: podcastsData.motivationPodcasts[index].subtitle,
                  description: podcastsData.motivationPodcasts[index].description,
                  image: podcastsData.motivationPodcasts[index].image))
        ],
      ),
    );
  }
}
