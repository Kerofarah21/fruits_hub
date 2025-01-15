import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import 'terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              hint: S.of(context).full_name,
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hint: S.of(context).email,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hint: S.of(context).password,
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xFFC9CECF),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TermsAndConditions(),
          ],
        ),
      ),
    );
  }
}
