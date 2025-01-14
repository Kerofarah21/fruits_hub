import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: AppTextStyles.styleSemiBold(
              context,
              AppColors.grayScale400,
              16,
            ),
          ),
          TextSpan(
            text: text2,
            style: AppTextStyles.styleSemiBold(
              context,
              AppColors.primaryColor,
              16,
            ),
          ),
        ],
      ),
    );
  }
}
