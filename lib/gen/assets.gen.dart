/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/alert.png
  AssetGenImage get alert => const AssetGenImage('assets/images/alert.png');

  /// File path: assets/images/app_title.png
  AssetGenImage get appTitle =>
      const AssetGenImage('assets/images/app_title.png');

  /// File path: assets/images/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.png');

  /// File path: assets/images/background_two.png
  AssetGenImage get backgroundTwo =>
      const AssetGenImage('assets/images/background_two.png');

  /// File path: assets/images/continue_podcast_four.png
  AssetGenImage get continuePodcastFour =>
      const AssetGenImage('assets/images/continue_podcast_four.png');

  /// File path: assets/images/continue_podcast_one.png
  AssetGenImage get continuePodcastOne =>
      const AssetGenImage('assets/images/continue_podcast_one.png');

  /// File path: assets/images/continue_podcast_three.png
  AssetGenImage get continuePodcastThree =>
      const AssetGenImage('assets/images/continue_podcast_three.png');

  /// File path: assets/images/continue_podcast_two.png
  AssetGenImage get continuePodcastTwo =>
      const AssetGenImage('assets/images/continue_podcast_two.png');

  /// File path: assets/images/headphone.png
  AssetGenImage get headphone =>
      const AssetGenImage('assets/images/headphone.png');

  /// File path: assets/images/headphone_dynamic_gradient.png
  AssetGenImage get headphoneDynamicGradient =>
      const AssetGenImage('assets/images/headphone_dynamic_gradient.png');

  /// File path: assets/images/notifications.png
  AssetGenImage get notifications =>
      const AssetGenImage('assets/images/notifications.png');

  /// File path: assets/images/play.png
  AssetGenImage get play => const AssetGenImage('assets/images/play.png');

  /// File path: assets/images/scroll.png
  AssetGenImage get scroll => const AssetGenImage('assets/images/scroll.png');

  /// File path: assets/images/slider_one.png
  AssetGenImage get sliderOne =>
      const AssetGenImage('assets/images/slider_one.png');

  /// File path: assets/images/slider_three.png
  AssetGenImage get sliderThree =>
      const AssetGenImage('assets/images/slider_three.png');

  /// File path: assets/images/slider_two.png
  AssetGenImage get sliderTwo =>
      const AssetGenImage('assets/images/slider_two.png');

  /// File path: assets/images/top_category_one.png
  AssetGenImage get topCategoryOne =>
      const AssetGenImage('assets/images/top_category_one.png');

  /// File path: assets/images/top_category_two.png
  AssetGenImage get topCategoryTwo =>
      const AssetGenImage('assets/images/top_category_two.png');

  /// File path: assets/images/trending_podcast_four.png
  AssetGenImage get trendingPodcastFour =>
      const AssetGenImage('assets/images/trending_podcast_four.png');

  /// File path: assets/images/trending_podcast_one.png
  AssetGenImage get trendingPodcastOne =>
      const AssetGenImage('assets/images/trending_podcast_one.png');

  /// File path: assets/images/trending_podcast_three.png
  AssetGenImage get trendingPodcastThree =>
      const AssetGenImage('assets/images/trending_podcast_three.png');

  /// File path: assets/images/trending_podcast_two.png
  AssetGenImage get trendingPodcastTwo =>
      const AssetGenImage('assets/images/trending_podcast_two.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        alert,
        appTitle,
        background,
        backgroundTwo,
        continuePodcastFour,
        continuePodcastOne,
        continuePodcastThree,
        continuePodcastTwo,
        headphone,
        headphoneDynamicGradient,
        notifications,
        play,
        scroll,
        sliderOne,
        sliderThree,
        sliderTwo,
        topCategoryOne,
        topCategoryTwo,
        trendingPodcastFour,
        trendingPodcastOne,
        trendingPodcastThree,
        trendingPodcastTwo
      ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/explore.svg
  String get explore => 'assets/svg/explore.svg';

  /// File path: assets/svg/explore2.png
  AssetGenImage get explore2 => const AssetGenImage('assets/svg/explore2.png');

  /// File path: assets/svg/headphone.svg
  String get headphone => 'assets/svg/headphone.svg';

  /// File path: assets/svg/heart.svg
  String get heart => 'assets/svg/heart.svg';

  /// File path: assets/svg/person.svg
  String get person => 'assets/svg/person.svg';

  /// List of all assets
  List<dynamic> get values => [explore, explore2, headphone, heart, person];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
