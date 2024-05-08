import 'package:fesaa_final_project/common/custom_shapes/containers/primary_header_contaner.dart';
import 'package:fesaa_final_project/common/custom_shapes/containers/search_container.dart';
import 'package:fesaa_final_project/common/widgets/texts/section_heading.dart';
import 'package:fesaa_final_project/features/orders/screens/home/widgets/home_appbar.dart';
import 'package:fesaa_final_project/features/orders/screens/home/widgets/home_catagoreis.dart';
import 'package:fesaa_final_project/features/orders/screens/home/widgets/promo_slider.dart';
import 'package:fesaa_final_project/features/orders/screens/home/widgets/service_slider.dart';
import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:fesaa_final_project/utils/constants/image_strings.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header --
            TPrimaryHeaderContaner(
              child: Column(
                children: [
                  /// -- AppBar --
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// -- Search Bar --
                  TSearchContainer(
                    text: 'Search The Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// -- Catagores --
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading --
                        TSectionHeading(
                          title: 'Populer Catagories',
                          showActionBotton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// Catagoreis --
                        THomeCatagoreis(),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// --- Body ---
            /// Home promo ---
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections / 1.5,
                  ),

                  /// Cleaning Services
                  TSectionHeading(title: 'Cleaning Services'),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TServiceSlider(
                    title: 'Carpet Cleaning',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
