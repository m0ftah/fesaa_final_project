import 'package:fesaa_final_project/common/custom_shapes/containers/image_container.dart';
import 'package:fesaa_final_project/common/widgets/appbar/appbar.dart';
import 'package:fesaa_final_project/common/widgets/texts/section_heading.dart';
import 'package:fesaa_final_project/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:fesaa_final_project/utils/constants/image_strings.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App Bar
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackarrow: true,
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const TImageContainer(
                        image: TImages.user,
                        width: 100,
                        height: 100,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Chaing Profile Picture'),
                      ),

                      /// Details
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// Heading Profile Info
                      const TSectionHeading(
                          title: 'Profile Information',
                          showActionBotton: false),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      TProfileMenu(
                          title: 'Name',
                          value: 'Coding with T',
                          onPressed: () {}),
                      TProfileMenu(
                          title: 'Username',
                          value: 'coding_with_t',
                          onPressed: () {}),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const Divider(),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      /// Heading Personal Info
                      const TSectionHeading(
                        title: 'Personal Information',
                        showActionBotton: false,
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      TProfileMenu(
                          title: 'User ID',
                          value: '45689',
                          icon: Iconsax.copy,
                          onPressed: () {}),
                      TProfileMenu(
                          title: 'E-mail',
                          value: 'Moftah_EL_t',
                          onPressed: () {}),
                      TProfileMenu(
                          title: 'Phone Number',
                          value: '+92-8059528',
                          onPressed: () {}),
                      TProfileMenu(
                          title: 'Gender', value: 'Male', onPressed: () {}),
                      TProfileMenu(
                          title: 'Date of Birth',
                          value: '10 Oct, 1994',
                          onPressed: () {}),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      Center(
                        child: TextButton(
                            onPressed: () {},
                            child: const Text('Close Account',
                                style: TextStyle(color: Colors.red))),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
