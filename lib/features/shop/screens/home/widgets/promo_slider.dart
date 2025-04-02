import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/cicular_container.dart';
import 'package:e_cormerce_project/common/widgets/images/rounded_image.dart';
import 'package:e_cormerce_project/features/shop/controllers/home_controller.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updateCarouselIndex(index),
          ),
          items:
              banners
                  .map(
                    (url) => RoundedImage(
                      imageUrl: url,
                      margin: EdgeInsets.symmetric(vertical: 12),
                    ),
                  )
                  .toList(),
        ),

        const SizedBox(height: AppSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  AppCicularContainer(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor:
                        controller.carouselCurrentIndex.value == i
                            ? AppColors.primaryColor
                            : Colors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
