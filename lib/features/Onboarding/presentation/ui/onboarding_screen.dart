import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';
import 'package:ncast/core/widgets/base.dart';
import 'package:ncast/core/widgets/custom_elevated_button.dart';
import 'package:ncast/core/widgets/custom_text_button.dart';

import 'package:ncast/features/onboarding/presentation/ui/widgets/background_headphone.dart';
import 'package:ncast/gen/assets.gen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: context.dynamicHeight(0.1),
        title: Image.asset(
          Assets.images.appTitle.path,
          scale: 1.4,
        ),
      ),
      body: Column(
        children: [
          const OnboardingBody(),
          SizedBox(
            height: context.dynamicHeight(0.03),
          ),
          CustomElevatedButton(
            buttonText: context.tr.signInButton,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Base()));
            },
          ),
          CustomTextButton(
            buttonText: context.tr.signUpButton,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
