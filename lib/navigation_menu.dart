import 'package:e_cormerce_project/features/personalization/screens/settings/settings.dart';
import 'package:e_cormerce_project/features/shop/screens/home/home.dart';
import 'package:e_cormerce_project/features/shop/screens/search/search.dart';
import 'package:e_cormerce_project/features/shop/screens/wishlist/wishlist.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = HelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected:
              (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? AppColors.black : AppColors.white,
          indicatorColor:
              darkMode
                  ? AppColors.white.withValues(alpha: 0.1)
                  : AppColors.black.withValues(alpha: 0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(
              icon: Icon(Iconsax.search_normal),
              label: 'Search',
            ),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screens = [
    const Home(),
    const Search(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
}
