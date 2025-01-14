// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../../../core/services/shared_preferences_singleton.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../auth/presentation/views/login_view.dart';
import '../../../../on-boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: Intl.getCurrentLocale() == 'ar'
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void executeNavigation() {
    if (Prefs.getData(key: kIsOnBoardingViewSeen)) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      });
    } else {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      });
    }
  }
}
