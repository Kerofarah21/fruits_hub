import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'custom_check_box.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isTermsAccepted,
          onChanged: (value) => setState(() => isTermsAccepted = value),
        ),
        SizedBox(
          width: 16,
        ),
        Flexible(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: S.of(context).terms1,
                  style: AppTextStyles.styleSemiBold(
                    context,
                    AppColors.grayScale400,
                    13,
                  ),
                ),
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  text: S.of(context).terms2,
                  style: AppTextStyles.styleSemiBold(
                    context,
                    AppColors.lightPrimaryColor,
                    13,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
