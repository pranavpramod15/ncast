import 'package:flutter/widgets.dart';
import 'package:ncast/core/extensions/context_extension.dart';
import 'package:ncast/widgets/explore_tabs.dart';

class CategorySlider extends StatelessWidget {
  const CategorySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ExploreTabs(title: context.tr.categoryMotivation),
                  ExploreTabs(
                    title: context.tr.categoryLifestyle,
                    selectedContainer: false,
                  ),
                  ExploreTabs(
                    title: context.tr.categoryBusiness,
                    selectedContainer: false,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
