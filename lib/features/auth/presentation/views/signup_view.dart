import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../generated/l10n.dart';
import 'widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const routeName = 'signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: S.of(context).new_account,
      ),
      body: SignupViewBody(),
    );
  }
}
