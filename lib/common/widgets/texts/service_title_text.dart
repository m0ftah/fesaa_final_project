import 'package:flutter/material.dart';

class TServiceText extends StatelessWidget {
  const TServiceText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.textAlign = TextAlign.left,
    this.maxLines = 2,
  });
  final String title;
  final bool smallSize;
  final TextAlign? textAlign;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
