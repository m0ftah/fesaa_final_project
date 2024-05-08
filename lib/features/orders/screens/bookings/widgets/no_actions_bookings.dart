import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:fesaa_final_project/utils/constants/image_strings.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:fesaa_final_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class NoActionsBookings extends StatelessWidget {
  const NoActionsBookings({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage(TImages.noActions)),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: dark ? TColors.light : TColors.dark),
          ),
          const SizedBox(
            height: TSizes.xs * 2,
          ),
          Text(
            subTitle,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: TColors.black),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections * 2,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: const Text('View all services')),
          )
        ],
      ),
    ));
  }
}
