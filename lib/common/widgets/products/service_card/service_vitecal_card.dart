import 'package:fesaa_final_project/common/custom_shapes/containers/rounded_container.dart';
import 'package:fesaa_final_project/common/styles/shadows.dart';
import 'package:fesaa_final_project/common/widgets/icons/circular_icon.dart';
import 'package:fesaa_final_project/common/widgets/images/t_rounded_images.dart';
import 'package:fesaa_final_project/common/widgets/texts/price_title.dart';
import 'package:fesaa_final_project/common/widgets/texts/service_title_text.dart';
import 'package:fesaa_final_project/features/orders/screens/service_detail/service_detail_screen.dart';
import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:fesaa_final_project/utils/constants/image_strings.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:fesaa_final_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ServiceVCard extends StatelessWidget {
  const ServiceVCard({super.key, required this.showdiscount});
  final bool showdiscount;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    /// Container with radus ,colors , padding
    return GestureDetector(
      onTap: () => Get.to(() => const ServiceDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(0.8),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkGrey : TColors.white),
        child: Column(
          children: [
            /// thumbmail
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.darkGrey : TColors.white,
              child: Stack(
                children: [
                  /// Image
                  const TRoundedImage(
                    imageUrl: TImages.cleaningImage1,
                    fit: BoxFit.cover,
                    applyBorderRaduce: true,
                  ),

                  /// Sail tag
                  if (showdiscount)
                    Positioned(
                      top: 10,
                      child: TRoundedContainer(
                        radius: TSizes.sm,
                        backgroundColor: TColors.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                            vertical: TSizes.xs, horizontal: TSizes.sm),
                        child: Text(
                          '25% ',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black),
                        ),
                      ),
                    ),

                  /// Favorite Icon
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            /// Details
            const Padding(
              padding: EdgeInsets.all(TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TServiceText(
                    title: 'Carpent Cleaning',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                ],
              ),
            ),
            const Spacer(),

            /// Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TPriceTitle(
                    price: ' 27',
                    isLarg: true,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: Icon(Iconsax.add, color: TColors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
