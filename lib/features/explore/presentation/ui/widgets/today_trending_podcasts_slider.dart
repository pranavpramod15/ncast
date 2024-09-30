import 'package:flutter/widgets.dart';
import 'package:ncast/core/data/spotlight_data.dart';
import 'package:ncast/widgets/todays-trending-widget.dart';

class TodayTrendingPodcastsSlider extends StatelessWidget {
  const TodayTrendingPodcastsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final SpotlightData spotlightData = SpotlightData();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              spotlightData.todayTrendingSpotlightData.length,
              (index) => TodayTrendingWidget(
                  imgPath: spotlightData
                      .todayTrendingSpotlightData[index].imagePath))
        ],
      ),
    );
  }
}
