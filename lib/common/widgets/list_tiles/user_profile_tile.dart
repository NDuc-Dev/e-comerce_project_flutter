import 'package:e_cormerce_project/common/widgets/images/circular_image.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(
        image: AppImage.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Nguyen Ngoc Duc',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: AppColors.white),
      ),
      subtitle: Text(
        'nguyenngocduc260504@gmail.com',
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: AppColors.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.edit, color: AppColors.white),
      ),
    );
  }
}
