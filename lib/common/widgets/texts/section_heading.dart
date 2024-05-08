import 'package:fesaa_final_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textColor,
    this.showActionBotton = true,
    required this.title,
    this.bottonTitle = 'View All',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionBotton;
  final String title, bottonTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(width: TSizes.xl * 3.5),
        if (showActionBotton)
          TextButton(onPressed: onPressed, child: Text(bottonTitle))
      ],
    );
  }
}
