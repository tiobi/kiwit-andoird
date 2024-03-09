import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../providers/auth_provider.dart';

enum SocialSignInButtonType { google, apple, kakao }

class SocialSignInButtonWidget extends StatelessWidget {
  SocialSignInButtonWidget({
    Key? key,
    required this.type,
  }) : super(key: key);

  final SocialSignInButtonType type;

  final AuthProvider authProvider = GetIt.instance<AuthProvider>();

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case SocialSignInButtonType.google:
        return _GoogleSignInButton(context);
      case SocialSignInButtonType.apple:
        return _AppleSignInButton(context);
      case SocialSignInButtonType.kakao:
        return _KakaoSignInButton(context);
    }
  }

  Widget _GoogleSignInButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () => authProvider.signInWithSocial(context: context),
        child: const Center(
          child: Text("구글로 시작하기"),
        ),
      ),
    );
  }

  Widget _AppleSignInButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () => authProvider.signInWithSocial(context: context),
        child: const Center(
          child: Text("애플로 시작하기"),
        ),
      ),
    );
  }

  Widget _KakaoSignInButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () => authProvider.signInWithSocial(context: context),
        child: const Center(
          child: Text("카카오로 시작하기"),
        ),
      ),
    );
  }
}
