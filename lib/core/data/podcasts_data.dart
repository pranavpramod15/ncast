import 'package:ncast/core/model/podcasts_model.dart';
import 'package:ncast/gen/assets.gen.dart';

class PodcastsData {
  final trendingData = <PodcastsModel>[
    PodcastsModel(
        title: "See More",
        subtitle: "Creative Studios",
        description: "15min",
        image: Assets.images.trendingPodcastOne.path),
    PodcastsModel(
        title: "Festival On the Beach",
        subtitle: "Creative Studios",
        description: "15min",
        image: Assets.images.trendingPodcastTwo.path),
    PodcastsModel(
        title: "Your Time",
        subtitle: "Educational",
        description: "25min",
        image: Assets.images.trendingPodcastThree.path),
    PodcastsModel(
        title: "Music Theme",
        subtitle: "Lofi Music",
        description: "15min",
        image: Assets.images.trendingPodcastFour.path)
  ];
  final continueListeningPodcasts = <PodcastsModel>[
    PodcastsModel(
        title: "Talk Show -Ep10",
        subtitle: "30 min remaining",
        description: "",
        isProgressIndicated: true,
        progressCount: 50,
        image: Assets.images.continuePodcastOne.path),
    PodcastsModel(
      title: "Talk Show Ep-7",
      subtitle: "15 min remaining",
      description: "",
      isProgressIndicated: true,
      progressCount: 70,
      image: Assets.images.continuePodcastTwo.path,
    ),
    PodcastsModel(
      title: "Musical Soul - Vol. 3",
      subtitle: "35 min remaining",
      description: "",
      isProgressIndicated: true,
      progressCount: 30,
      image: Assets.images.continuePodcastThree.path,
    ),
    PodcastsModel(
      title: "Let's Stand Up",
      subtitle: "5 min remaining",
      description: "",
      isProgressIndicated: true,
      progressCount: 70,
      image: Assets.images.continuePodcastFour.path,
    ),
  ];
  final topCategoryPodcasts = <PodcastsModel>[
    PodcastsModel(
        title: "Business",
        description: "125 Podcasts",
        image: Assets.images.topCategoryOne.path),
    PodcastsModel(
        title: "Healthy Lifestyle",
        description: "158 Podcasts",
        image: Assets.images.topCategoryTwo.path),
    PodcastsModel(
        title: "Job & Work",
        description: "195 Podcasts",
        image: Assets.images.topCategoryOne.path),
  ];
  final motivationPodcasts = <PodcastsModel>[
    PodcastsModel(
        title: "Enjoy It",
        subtitle: "Socially Buzzed",
        description: "22 min",
        image: Assets.images.motivationPodcastOne.path),
    PodcastsModel(
        title: "Grow with us",
        subtitle: "Business",
        description: "12 min",
        image: Assets.images.motivationPodcastTwo.path),
    PodcastsModel(
        title: "Crack The Interview",
        subtitle: "Educational",
        description: "30 min",
        image: Assets.images.motivationPodcastTwo.path),
  ];
  final favouritePodcasts = <PodcastsModel>[
    PodcastsModel(
        title: "Sunday Summer -Ep3",
        subtitle: "Entertainment",
        description: "15 min",
        image: Assets.images.favouriteOne.path),
    PodcastsModel(
        title: "Musical Soul - Vol.1",
        subtitle: "Lifestyle",
        description: "35 min",
        image: Assets.images.favouriteTwo.path),
    PodcastsModel(
        title: "Talk Show -Ep4",
        subtitle: "Business",
        description: "20 min",
        image: Assets.images.favouriteThree.path),
    PodcastsModel(
        title: "Sunday Summer -Ep3",
        subtitle: "Entertainment",
        description: "15 min",
        image: Assets.images.favouriteFour.path),
    PodcastsModel(
        title: "Unravelling the mind",
        subtitle: "Healthy Lifestyle",
        description: "10 min",
        image: Assets.images.favouriteFive.path),
    PodcastsModel(
        title: "Talk Show",
        subtitle: "Entertainment",
        description: "15 min",
        image: Assets.images.favouriteSix.path),
  ];
  final recentlyPlayedPodcasts = <PodcastsModel>[
    PodcastsModel(
      title: "True Crime",
      subtitle: "20 min remaining",
      description: "",
      isProgressIndicated: true,
      progressCount: 30,
      image: Assets.images.recentlyPlayed.path,
    ),
    PodcastsModel(
        title: "See Radio",
        subtitle: "35 min remaining",
        description: "",
        isProgressIndicated: true,
        progressCount: 70,
        image: Assets.images.recentlyPlayed2.path)
  ];
}
