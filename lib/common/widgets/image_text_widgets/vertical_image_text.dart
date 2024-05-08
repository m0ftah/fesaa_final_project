import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:fesaa_final_project/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backGroungColor,
    this.onTap,
    this.highte = 56,
    this.width = 56,
    this.reduce = 100,
    this.padding = TSizes.sm,
  });

  final String image, title;
  final Color textColor;
  final Color? backGroungColor;
  final void Function()? onTap;
  final double highte;
  final double width;
  final double reduce;
  final double padding;
  
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            /// Circuler Contanier
            Container(
              width: width,
              height: highte,
              padding: EdgeInsets.all(padding),
              decoration: BoxDecoration(
                color: backGroungColor ?? (dark ? TColors.dark : TColors.light),
                borderRadius: BorderRadius.circular(reduce),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color:  dark ? TColors.light : TColors.dark ,
                ),
              ),
            ),

            /// Text
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
