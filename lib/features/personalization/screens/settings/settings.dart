import 'package:fesaa_final_project/common/custom_shapes/containers/primary_header_contaner.dart';
import 'package:fesaa_final_project/common/widgets/appbar/appbar.dart';
import 'package:fesaa_final_project/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:fesaa_final_project/common/widgets/list_tiles/userprofile_tile.dart';
import 'package:fesaa_final_project/common/widgets/texts/section_heading.dart';
import 'package:fesaa_final_project/features/personalization/screens/profile/profile_screen.dart';
import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --- Header
            TPrimaryHeaderContaner(
              child: Column(
                children: [
                  /// AppBar
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),

                  /// User Profile Card
                  TUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),

                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            /// --- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                    title: 'Account Settings',
                    showActionBotton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// Account Settings
                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My address',
                    subTitle: 'Set locations for Services',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.calendar_add,
                    title: 'My Bookings',
                    subTitle: 'Check Cancel Pospan any Service',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.card,
                    title: 'Paying Method',
                    subTitle: 'you Can set Visa , PayPal , ect',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'My Notifications',
                    subTitle: 'Check any Notifications About Services',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Previcy',
                    subTitle: 'Manage data usage and connected accounts',
                    onTap: () {},
                  ),

                  /// App Settings
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const TSectionHeading(
                    title: 'App Settings',
                    showActionBotton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  ), // Sized Box
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
