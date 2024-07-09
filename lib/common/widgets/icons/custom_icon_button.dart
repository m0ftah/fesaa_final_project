import 'package:fesaa_final_project/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      this.alignment,
      this.height,
      this.width,
      this.padding,
      this.decoration,
      this.child,
      this.onTap});

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: TColors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: TColors.grey,
                    width: 22
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color:TColors.grey,
                      spreadRadius: 16,
                      blurRadius: 16,
                      offset: Offset(
                        0,
                        15,
                      ),
                    )
                  ],
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}
