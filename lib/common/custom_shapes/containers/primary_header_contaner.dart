
import 'package:fesaa_final_project/common/custom_shapes/containers/circular_container.dart';
import 'package:fesaa_final_project/common/custom_shapes/curved_edges/curved_edges_wiget.dart';
import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContaner extends StatelessWidget {
  const TPrimaryHeaderContaner({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 360,

          /// if [size.isFinite : is not true in stack ] error ocurd in README.md file at [Documentation]
          child: Stack(
            children: [
              /// Background Custom Shapes
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backGroungcolor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                  backGroungcolor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
