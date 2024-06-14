import 'package:fesaa_final_project/common/custom_shapes/containers/primary_header_contaner.dart';
import 'package:fesaa_final_project/common/custom_shapes/containers/search_container.dart';
import 'package:fesaa_final_project/common/widgets/layouts/grid_layout.dart';
import 'package:fesaa_final_project/common/widgets/products/service_card/service_vitecal_card.dart';
import 'package:fesaa_final_project/common/widgets/texts/section_heading.dart';
import 'package:fesaa_final_project/features/orders/screens/home/widgets/home_appbar.dart';
import 'package:fesaa_final_project/features/orders/screens/home/widgets/home_catagoreis.dart';
import 'package:fesaa_final_project/features/orders/screens/home/widgets/promo_slider.dart';
import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:fesaa_final_project/utils/constants/image_strings.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header --
            const TPrimaryHeaderContaner(
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
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  TSectionHeading(
                    title: 'Cleaning Services',
                    showActionBotton: true,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  ///  Services
                  TGridLayout(
               
                    itemCount: 4,
                    itemBuilder: (_, index) => const ServiceVCard(
                      showdiscount: false,
                    ),
                  ),

                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
