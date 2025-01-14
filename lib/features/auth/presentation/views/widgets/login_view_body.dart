import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import 'have_account.dart';
import 'or_divider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                S.of(context).forgot_password,
                style: AppTextStyles.styleSemiBold(
                  context,
                  AppColors.lightPrimaryColor,
                  13,
                ),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            CustomButton(
              onPressed: () {},
              text: S.of(context).login,
            ),
            SizedBox(
              height: 33,
            ),
            HaveAccount(
              text1: S.of(context).donot_have_account,
              text2: S.of(context).create_account,
            ),
            SizedBox(
              height: 33,
            ),
            OrDivider(),
          ],
        ),
      ),
    );
  }
}
