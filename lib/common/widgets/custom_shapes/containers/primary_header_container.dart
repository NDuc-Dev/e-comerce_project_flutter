import 'package:e_cormerce_project/common/widgets/custom_shapes/containers/cicular_container.dart';
import 'package:e_cormerce_project/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: AppColors.primaryColor,
        padding: EdgeInsets.all(0),
        // child: SizedBox(
        //   height: 380,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: AppCicularContainer(
                  backgroundColor: AppColors.textWhite.withValues(alpha: 0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: AppCicularContainer(
                  backgroundColor: AppColors.textWhite.withValues(alpha: 0.1),
                ),
              ),
              child,
            ],
          ),
        // ),
      ),
    );
  }
}
