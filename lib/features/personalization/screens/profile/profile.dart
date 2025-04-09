import 'package:e_cormerce_project/common/widgets/appbar/appbar.dart';
import 'package:e_cormerce_project/common/widgets/images/circular_image.dart';
import 'package:e_cormerce_project/common/widgets/texts/section_heading.dart';
import 'package:e_cormerce_project/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: AppImage.user,
                      width: 80,
                      height: 80,
                      padding: 0,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              //Profile Details
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              AppSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              ProfileMenu(
                title: 'Name',
                value: 'Nguyen Ngoc Duc',
                onTap: () {},
              ),
              ProfileMenu(
                title: 'Email',
                value: 'nguyenngocduc260504@gmail.com',
                onTap: () {},
              ),
              ProfileMenu(
                title: 'Phone Number',
                value: '+84 123 456 789',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
