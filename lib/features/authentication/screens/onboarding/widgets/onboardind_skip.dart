
import 'package:fesaa_final_project/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:fesaa_final_project/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight() - 10,
        right: TSizes.defaultSpace,
        child: TextButton(
            onPressed: () {
              OnBoardingController.instanse.skipPage();
            },
            child: const Text('Skip')));
  }
}
