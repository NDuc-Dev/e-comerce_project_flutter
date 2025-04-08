import 'package:e_cormerce_project/common/widgets/appbar/appbar.dart';
import 'package:e_cormerce_project/common/widgets/appbar/tabbar.dart';
import 'package:e_cormerce_project/common/widgets/brands/brand_card.dart';
import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_cormerce_project/common/widgets/layouts/grid_layout.dart';
import 'package:e_cormerce_project/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:e_cormerce_project/common/widgets/texts/section_heading.dart';
import 'package:e_cormerce_project/features/shop/screens/search/widgets/category_tab.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        //Appbar
        appBar: AppAppBar(
          title: Text(
            "Search",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          //Header
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
                      //Search Bar
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
                          return const BrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),

                //Tab
                bottom: AppTabbar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Fashion')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Home')),
                    Tab(child: Text('Beauty')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
