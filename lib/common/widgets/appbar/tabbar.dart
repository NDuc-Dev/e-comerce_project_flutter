import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/device/device_utility.dart';
import 'package:e_cormerce_project/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppTabbar extends StatelessWidget implements PreferredSizeWidget {
  const AppTabbar({super.key, required this.tabs});

  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Material(
      color: dark ? AppColors.dark : AppColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: AppColors.primaryColor,
        labelColor: dark ? AppColors.white : AppColors.primaryColor,
        unselectedLabelColor: AppColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight((DeviceUtils.getAppBarHeight()));
}
