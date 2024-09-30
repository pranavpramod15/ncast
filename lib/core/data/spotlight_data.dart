import 'package:ncast/core/model/spotlight_model.dart';
import 'package:ncast/gen/assets.gen.dart';

class SpotlightData {
  final todayTrendingSpotlightData = <SpotlightPodcastsModel>[
    SpotlightPodcastsModel(imagePath: Assets.images.todaysPodcastOne.path),
    SpotlightPodcastsModel(imagePath: Assets.images.todaysPodcastTwo.path)
  ];
  final promotedProductsData = <SpotlightPodcastsModel>[
    SpotlightPodcastsModel(imagePath:  Assets.images.sliderOne.path),
    SpotlightPodcastsModel(imagePath:  Assets.images.sliderTwo.path),
    SpotlightPodcastsModel(imagePath:  Assets.images.sliderThree.path),
    SpotlightPodcastsModel(imagePath:  Assets.images.sliderOne.path),
  ];
}
