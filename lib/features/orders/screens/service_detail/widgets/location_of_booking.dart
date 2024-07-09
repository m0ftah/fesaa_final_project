import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LocationOfBooking extends StatelessWidget {
  const LocationOfBooking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: TColors.grey),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Iconsax.home),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Home',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                width: 200,
              ),
              const Icon(Iconsax.edit_24),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
              'Plot no 209, Kavuri Hills, Madhapur, Telangana 500033, Ph: +91234567890'),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Icon(Iconsax.clock),
              SizedBox(
                width: 10,
              ),
              Text('Sat, Apr 09-07:30 PM'),
              SizedBox(
                width: 100,
              ),
              Icon(Iconsax.edit_24),
            ],
          )
        ],
      ),
    );
  }
}
