import 'package:fesaa_final_project/common/custom_shapes/containers/image_container.dart';
import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:fesaa_final_project/utils/constants/image_strings.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:fesaa_final_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TServiceSlider extends StatelessWidget {
  const TServiceSlider({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return SizedBox(
      height: 250,
      child: ListView.builder(
        shrinkWrap: false,
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
              child: Column(
                children: [
                  const TImageContainer(
                    backgroundColor: Colors.transparent,
                    width: 160,
                    height: 180,
                    padding: 0,
                    image: TImages.cleaningImage1,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: dark ? TColors.light : TColors.dark),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
