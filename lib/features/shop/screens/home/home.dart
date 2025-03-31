import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_cormerce_project/common/widgets/texts/section_heading.dart';
import 'package:e_cormerce_project/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/primary_header_container.dart';
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
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  const HomeAppBar(),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const AppSearchContainer(text: "Search in Store"),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        AppSectionHeading(
                          title: 'Brand Categories',
                          showActionButton: false,
                        ),
                        const SizedBox(height: AppSizes.spaceBtwItems),

                        ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return Column(
                              children: [
                                Container(
                                  width: 56,
                                  height: 56,
                                  padding: const EdgeInsets.all(AppSizes.sm),
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
