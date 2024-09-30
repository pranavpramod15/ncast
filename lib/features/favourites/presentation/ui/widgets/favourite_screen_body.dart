import 'package:flutter/material.dart';
import 'package:ncast/core/widgets/section.dart';
import 'package:ncast/core/extensions/context_extension.dart';
import 'package:ncast/features/favourites/presentation/ui/widgets/favourite_podcasts.dart';

class FavouriteScreenBody extends StatelessWidget {
  const FavouriteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Section(title: context.tr.sectionFavouritePodcasts),
          const FavouritePodcasts()
        ],
      ),
    );
  }
}
