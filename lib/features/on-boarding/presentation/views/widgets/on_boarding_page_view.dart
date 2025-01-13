import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subTitle: S.of(context).subTitle1,
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: S.of(context).title1,
                  style: AppTextStyles.styleBold(
                    context,
                    AppColors.grayScale950,
                    23,
                  ),
                ),
                TextSpan(
                  text: 'Fruit',
                  style: AppTextStyles.styleBold(
                    context,
                    AppColors.primaryColor,
                    23,
                  ),
                ),
                TextSpan(
                  text: 'HUB',
                  style: AppTextStyles.styleBold(
                    context,
                    AppColors.orange500,
                    23,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        PageViewItem(
          isVisible: false,
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          subTitle: S.of(context).subTitle2,
          title: Text(
            S.of(context).title2,
            style: AppTextStyles.styleBold(
              context,
              AppColors.grayScale950,
              23,
            ),
          ),
        ),
      ],
    );
  }
}
