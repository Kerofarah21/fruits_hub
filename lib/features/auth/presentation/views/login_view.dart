import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../generated/l10n.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: S.of(context).login,
      ),
    );
  }
}
