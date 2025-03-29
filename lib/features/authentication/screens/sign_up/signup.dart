import 'package:e_cormerce_project/features/authentication/screens/sign_up/widgets/signup_form.dart';
import 'package:e_cormerce_project/utils/common/widgets.login_signup/form_divider.dart';
import 'package:e_cormerce_project/utils/common/widgets.login_signup/social_button.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Title
              Text(
                AppTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              //Form
              SignUpForm(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              //Divider
              FormDivider(dividerText: AppTexts.orSignUpWith.capitalize!),
              SizedBox(height: AppSizes.spaceBtwSections),
              //Social btn
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}


