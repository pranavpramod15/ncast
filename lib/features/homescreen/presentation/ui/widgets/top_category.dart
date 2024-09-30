import 'package:flutter/material.dart';
import 'package:ncast/core/data/podcasts_data.dart';
import 'package:ncast/features/homescreen/presentation/ui/widgets/top_category_items.dart';

class TopCategory extends StatelessWidget {
  const TopCategory({super.key});

  @override
  Widget build(BuildContext context) {
    final PodcastsData podcastsData = PodcastsData();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(podcastsData.topCategoryPodcasts.length, (index) {
            return TopCategoryItem(
                title: podcastsData.topCategoryPodcasts[index].title,
                description:
                    podcastsData.topCategoryPodcasts[index].description,
                image: podcastsData.topCategoryPodcasts[index].image);
          }),
        ],
      ),
    );
  }
}
