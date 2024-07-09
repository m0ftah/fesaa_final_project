import 'package:fesaa_final_project/common/widgets/appbar/appbar.dart';
import 'package:fesaa_final_project/common/widgets/products/cartcounter.dart';
import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:fesaa_final_project/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: TColors.white),
          )
        ],
      ),
      actions: [
        TCartCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.location,
              color: TColors.white,
            ))
      ],
    );
  }
}
