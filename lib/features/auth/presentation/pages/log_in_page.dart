import 'package:flutter/material.dart';
import 'package:kiwit/features/auth/presentation/widgets/log_in_title_widget.dart';

import '../widgets/social_sign_in_button_widget.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const LogInTitleWidget(),
            SocialSignInButtonWidget(type: SocialSignInButtonType.google),
            SocialSignInButtonWidget(type: SocialSignInButtonType.apple),
            SocialSignInButtonWidget(type: SocialSignInButtonType.kakao),
          ],
        ),
      ),
    );
  }
}
