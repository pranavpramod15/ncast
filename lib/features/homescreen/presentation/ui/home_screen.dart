import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';
import 'package:ncast/core/data/podcasts_data.dart';
import 'package:ncast/features/homescreen/presentation/ui/widgets/continue_listening.dart';

import 'package:ncast/features/homescreen/presentation/ui/widgets/product_slider.dart';
import 'package:ncast/core/widgets/section.dart';
import 'package:ncast/features/homescreen/presentation/ui/widgets/top_category.dart';
import 'package:ncast/features/homescreen/presentation/ui/widgets/trending_podcasts.dart';

import 'package:ncast/widgets/custom_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  final PodcastsData podcastsData = PodcastsData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextField(),
              Section(title: context.tr.sectionPromotedPodcasts),
              const ProductSlider(),
              Section(
                title: context.tr.sectionTrendingPodcasts,
                isButtonEnabled: true,
              ),
              const TrendingPodcasts(),
              Section(
                title: context.tr.sectionContinueListening,
                isButtonEnabled: true,
              ),
              const ContinueListening(),
              Section(
                title: context.tr.sectionTopCategories,
                isButtonEnabled: true,
              ),
              const TopCategory()
            ],
          ),
        ),
      ),
    );
  }
}
