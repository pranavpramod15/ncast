import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';

import 'package:ncast/gen/assets.gen.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: ShapeDecoration(
              color: Colors.grey.shade300,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32))),
          width: MediaQuery.of(context).size.width - 10,
          child: TextField(
            decoration: InputDecoration(
                hintText: context.tr.hintTextSearchBar,
                hintStyle:
                    const TextStyle(color: Color.fromRGBO(31, 31, 31, 100)),
                prefixIcon: Image.asset(
                  Assets.images.search.path,
                  scale: 1.4,
                ),
                contentPadding: const EdgeInsets.all(20),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
          ),
        ),
      ),
    );
  }
}
