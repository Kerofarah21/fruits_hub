import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../generated/l10n.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Text(
            S.of(context).or,
            style: AppTextStyles.styleSemiBold(
              context,
              AppColors.grayScale950,
              16,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
          ),
        ),
      ],
    );
  }
}
