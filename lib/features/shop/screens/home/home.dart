import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_cormerce_project/common/widgets/texts/section_heading.dart';
import 'package:e_cormerce_project/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_cormerce_project/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_cormerce_project/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  const HomeAppBar(),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  //Searchbar
                  const AppSearchContainer(text: "Search in Store"),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  //Categories
                  Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        //Section Heading
                        AppSectionHeading(
                          title: 'Brand Categories',
                          showActionButton: false,
                          textColor: AppColors.white,
                        ),
                        const SizedBox(height: AppSizes.spaceBtwItems),

                        //Categories
                        AppHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Body
            Padding(
              padding: EdgeInsets.all(AppSizes.defaultSpace),
              child: PromoSlider(),
            ),
          ],
        ),
      ),
    );
  }
}

