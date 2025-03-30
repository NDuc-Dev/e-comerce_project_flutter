import 'package:e_cormerce_project/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_cormerce_project/utils/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(child: Column(children: [HomeAppBar()])),
          ],
        ),
      ),
    );
  }
}
