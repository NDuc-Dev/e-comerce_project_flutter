import 'package:e_cormerce_project/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_cormerce_project/features/shop/screens/sub_category/sub_category.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppHomeCategories extends StatelessWidget {
  const AppHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return AppVerticalImageText(
            image: AppImage.nikeLogoIcon,
            title: 'Nike',
            onTap: () => Get.to(()=> SubCategoriesScreen(title: 'Nike', headingTitle: 'Product')),
          );
        },
      ),
    );
  }
}

