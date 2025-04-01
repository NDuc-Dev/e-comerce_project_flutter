import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/cicular_container.dart';
import 'package:e_cormerce_project/common/widgets/images/rounded_image.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_cormerce_project/features/shop/controllers/'

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(viewportFraction: 1),
          items: [
            RoundedImage(imageUrl: AppImage.banner1),
            RoundedImage(imageUrl: AppImage.banner2),
            RoundedImage(imageUrl: AppImage.banner3),
          ],
        ),
    
        const SizedBox(height: AppSizes.spaceBtwItems),
        Row(
          children: [
            for (int i = 0; i < 3; i++)
              AppCicularContainer(
                width: 20,
                height: 4,
                margin: EdgeInsets.only(right: 10),
                backgroundColor: Colors.green,
              ),
          ],
        ),
      ],
    );
  }
}
