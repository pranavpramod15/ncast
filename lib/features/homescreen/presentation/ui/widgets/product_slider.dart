import 'package:flutter/material.dart';
import 'package:ncast/core/data/spotlight_data.dart';
import 'package:ncast/widgets/promoted_product_widget.dart';

class ProductSlider extends StatelessWidget {
  const ProductSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final SpotlightData spotlightData = SpotlightData();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              spotlightData.promotedProductsData.length,
              (index) => PromotedWidget(
                  imgPath: spotlightData.promotedProductsData[index].imagePath))
        ],
      ),
    );
  }
}
