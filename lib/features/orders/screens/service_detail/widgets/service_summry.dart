import 'package:fesaa_final_project/utils/constants/image_strings.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ServiceDetailes extends StatelessWidget {
  const ServiceDetailes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFE6EAFF),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selected Services',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: TSizes.sm,
          ),
          Row(
            children: [
              const Image(
                height: 80,
                width: 80,
                image: AssetImage(TImages.cleaningImage1),
              ),
              const SizedBox(
                width: TSizes.sm,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Reguler AC serevice',
                        style:
                            Theme.of(context).textTheme.titleMedium),
                    const TextSpan(
                        text: '\n',
                        style: TextStyle(
                            height:
                                2.0)), // Adjust line height if needed
                    TextSpan(
                        text: '70',
                        style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
              const SizedBox(
                height: TSizes.sm,
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.sm,
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: '. 45 mins to 1.5 Hour',
                    style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

