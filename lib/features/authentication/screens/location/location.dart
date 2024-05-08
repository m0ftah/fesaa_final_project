import 'package:fesaa_final_project/common/custom_shapes/containers/search_container.dart';
import 'package:fesaa_final_project/common/styles/spacing_styles.dart';
import 'package:fesaa_final_project/features/authentication/screens/location/widgets/location_header.dart';
import 'package:fesaa_final_project/navigation_menu.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:fesaa_final_project/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// --- Header ---
              const LocationHeader(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// --- Search Location ---
              const TSearchContainer(
                padding: 5,
                text: 'Search Location',
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Set Location On Map Botton
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Iconsax.location),
                      SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      Text(TTexts.setLocationOnMap)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections * 7,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: const Text(TTexts.useCurrentlocation),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
