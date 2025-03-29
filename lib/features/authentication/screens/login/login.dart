import 'package:e_cormerce_project/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_cormerce_project/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_cormerce_project/utils/common/styles/spacing_style.dart';
import 'package:e_cormerce_project/utils/common/widgets/login_signup/form_divider.dart';
import 'package:e_cormerce_project/utils/common/widgets/login_signup/social_button.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo, title & subtitle
              LoginHeader(),
              //Login Form
              LoginForm(),

              FormDivider(dividerText: AppTexts.orSignInWith.capitalize!),
              const SizedBox(height: AppSizes.spaceBtwSections),
              //Footer
              SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}


