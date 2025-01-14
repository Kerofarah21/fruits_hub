import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../../core/services/shared_preferences_singleton.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/l10n.dart';
import '../../../../auth/presentation/views/login_view.dart';
import 'on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .8,
            child: OnBoardingPageView(
              pageController: pageController,
            ),
          ),
          DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color: currentPage == 0
                  ? AppColors.primaryColor.withValues(alpha: 0.5)
                  : AppColors.primaryColor,
            ),
          ),
          SizedBox(
            height: 29,
          ),
          Visibility(
            visible: currentPage == 1,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
              child: CustomButton(
                onPressed: () {
                  Prefs.saveData(key: kIsOnBoardingViewSeen, value: true);
                  Navigator.of(context)
                      .pushReplacementNamed(LoginView.routeName);
                },
                text: S.of(context).start_now,
              ),
            ),
          ),
          SizedBox(
            height: 43,
          ),
        ],
      ),
    );
  }
}
