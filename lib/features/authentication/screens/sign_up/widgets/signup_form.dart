import 'package:e_cormerce_project/features/authentication/screens/sign_up/widgets/term_and_condition_checkbox.dart';
import 'package:e_cormerce_project/utils/constants/sizes.dart';
import 'package:e_cormerce_project/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
    
          //Email
          SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: AppTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
    
          //Password
          SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: AppTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwInputFields),
    
          //Term & Condition check box
          TermAndConditionCheckbox(),
          SizedBox(height: AppSizes.spaceBtwSections),
    
          //SignUp btn
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(AppTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

