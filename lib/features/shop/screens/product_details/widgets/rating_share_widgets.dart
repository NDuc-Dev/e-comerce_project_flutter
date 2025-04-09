import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        //Rating
        // Row(
        //   children: [
        //     Icon(Iconsax.star1, color: Colors.amber, size: 24),
        //     SizedBox(width: AppSizes.spaceBtwItems / 2),
        //     Text.rich(
        //       TextSpan(
        //         children: [
        //           TextSpan(
        //             text: '5.0',
        //             style: Theme.of(context).textTheme.bodyLarge,
        //           ),
        //           const TextSpan(text: ' (1000)'),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
    
        //Sharre Button
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share, size: AppSizes.iconMd),
        ),
      ],
    );
  }
}