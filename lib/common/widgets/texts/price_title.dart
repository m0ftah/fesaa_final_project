import 'package:flutter/material.dart';

class TPriceTitle extends StatelessWidget {
  const TPriceTitle({
    super.key,
    this.currancy = 'LD',
    required this.price,
    this.maxLines = 1,
     this.isLarg = false,
     this.lineThrough = false,
  });
  final String currancy, price;
  final int maxLines;
  final bool isLarg;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currancy + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarg
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
