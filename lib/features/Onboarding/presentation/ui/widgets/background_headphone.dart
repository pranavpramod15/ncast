import 'package:flutter/material.dart';
import 'package:ncast/core/extensions/context_extension.dart';
import 'package:ncast/features/onboarding/presentation/ui/widgets/background_image_gradient.dart';
import 'package:ncast/features/onboarding/presentation/ui/widgets/background_image_text_one.dart';
import 'package:ncast/features/onboarding/presentation/ui/widgets/background_image_text_two.dart';
import 'package:ncast/features/onboarding/presentation/ui/widgets/headphone_image.dart';
import 'package:ncast/features/onboarding/presentation/ui/widgets/onboarding_caption.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImageGradient(),
        const BackgroundImageTextOne(),
        const BackgroundImageTextTwo(),
        const HeadphoneImage(),
        OnboardingCaption(
          description: context.tr.onboardingCaptionDescriptionText,
          title: context.tr.onboardingCaptionTitleText,
        )
      ],
    );
  }
}
