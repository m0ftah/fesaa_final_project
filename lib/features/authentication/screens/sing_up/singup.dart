
import 'package:fesaa_final_project/common/widgets/login_singup/form_divider.dart';
import 'package:fesaa_final_project/common/widgets/login_singup/social_bottoms.dart';
import 'package:fesaa_final_project/features/authentication/screens/sing_up/widgets/singup_form.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:fesaa_final_project/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Form
              const SingUpForm(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Divider
              const TFormDivider(dividerText: TTexts.orSignInWith),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// SocialBottoms
              const SocialBottom()
            ],
          ),
        ),
      ),
    );
  }
}
