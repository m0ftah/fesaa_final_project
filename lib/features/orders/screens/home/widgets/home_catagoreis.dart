import 'package:fesaa_final_project/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:fesaa_final_project/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class THomeCatagoreis extends StatelessWidget {
  const THomeCatagoreis({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.ac,
            title: 'AC',
            onTap: () {},
          );
        },
      ),
    );
  }
}
