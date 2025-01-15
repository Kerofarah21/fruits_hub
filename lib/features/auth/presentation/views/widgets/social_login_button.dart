import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  final String label, icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppColors.gray,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16),
        )),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: VisualDensity(
            vertical: VisualDensity.minimumDensity,
          ),
          leading: SvgPicture.asset(icon),
          title: Text(
            label,
            style: AppTextStyles.styleSemiBold(
              context,
              AppColors.grayScale950,
              16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
