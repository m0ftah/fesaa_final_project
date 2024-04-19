import 'package:fesaa_final_project/common/styles/spacing_styles.dart';
import 'package:fesaa_final_project/common/widgets/login_singup/form_divider.dart';
import 'package:fesaa_final_project/common/widgets/login_singup/social_bottoms.dart';
import 'package:fesaa_final_project/features/authentication/screens/login/widgets/login_form%20copy.dart';
import 'package:fesaa_final_project/features/authentication/screens/login/widgets/login_header.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:fesaa_final_project/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Login Header
              LoginHeader(),

              /// Form
              LoginForm(),

              /// Divider
              TFormDivider(
                dividerText: TTexts.orSignInWith,
              ),

              SizedBox(
                height: TSizes.spaceBtwSections - 10,
              ),

              /// Footer
              SocialBottom()
            ],
          ),
        ),
      ),
    );
  }
}
