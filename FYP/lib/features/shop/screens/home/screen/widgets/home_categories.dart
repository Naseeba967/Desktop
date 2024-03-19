import 'package:finalyearproject/common/widgets/image_text_widget/app_vertical_image_text.dart';
import 'package:finalyearproject/features/shop/screens/sub_cataegories/sub_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82,
      child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return AppVerticalImageText(
              onTap: () => Get.to(() => const SubCategory()),
              title: 'Product Categories',
              image: 'assets/images/wheelchair.jpg',
            );
          }),
    );
  }
}
