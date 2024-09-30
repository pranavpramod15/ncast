class PodcastsModel {
  final String title;
  final String subtitle;
  final String description;
  final String image;
  final bool isProgressIndicated;
  final double progressCount;

  const PodcastsModel(
      {required this.title,
      this.isProgressIndicated = false,
      this.progressCount = 0,
      this.subtitle = "",
      this.description = "",
      required this.image});
}
