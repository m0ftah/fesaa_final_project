import 'package:fesaa_final_project/common/custom_shapes/containers/circular_container.dart';
import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:fesaa_final_project/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularContainer(
        padding: 0,
        height: 50,
        width: 50,
        child: Image(image: AssetImage(TImages.user)),
      ),
      title: Text(
        'Moftah ',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        'moftah050@gamil.com ',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Iconsax.edit,
            color: TColors.white,
          )),
    );
  }
}
