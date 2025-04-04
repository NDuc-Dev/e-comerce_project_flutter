import 'package:e_cormerce_project/common/widgets/appbar/appbar.dart';
import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_cormerce_project/common/widgets/images/circular_image.dart';
import 'package:e_cormerce_project/common/widgets/layouts/grid_layout.dart';
import 'package:e_cormerce_project/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:e_cormerce_project/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_cormerce_project/common/widgets/texts/section_heading.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/enum.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text(
          "Search",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [CartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor:
                  HelperFunction.isDarkMode(context)
                      ? AppColors.dark
                      : AppColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(height: AppSizes.spaceBtwItems),
                    AppSearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(height: AppSizes.spaceBtwSections),

                    //Featured Brands
                    AppSectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

                    GridLayout(
                      mainAxisExtent: 80,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: RoundedContainer(
                            padding: const EdgeInsets.all(AppSizes.sm),
                            showBorder: true,
                            backgroundColor: AppColors.trasparent,
                            child: Row(
                              children: [
                                //Icon
                                Flexible(
                                  child: CircularImage(
                                    isNetworkImage: false,
                                    image: AppImage.nikeLogoIcon,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                        HelperFunction.isDarkMode(context)
                                            ? AppColors.white
                                            : AppColors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: AppSizes.spaceBtwItems / 2,
                                ),

                                //Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const BrandTitleTextWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        '265 Products aaaaaaaaaaaaa',
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
