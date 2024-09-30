import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';
import 'package:ncast/core/widgets/section.dart';


import 'package:ncast/features/explore/presentation/ui/widgets/category_slider.dart';
import 'package:ncast/features/explore/presentation/ui/widgets/motivational_podcasts.dart';
import 'package:ncast/features/explore/presentation/ui/widgets/today_trending_podcasts_slider.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Section(title: context.tr.sectionTrendingPodcasts),
              const TodayTrendingPodcastsSlider(),
              const CategorySlider(),
              const MotivationalPodcasts(),
            ],
          ),
        ),
      ),
    );
  }
}
