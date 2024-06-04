import 'package:flutter/material.dart';
import 'package:healcalcomani/common/const/const_string.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key, required this.buttonType});
  final String buttonType;

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  String assetsPath = "";

  @override
  void initState() {
    super.initState();
    setAssetsPath();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        //TODO
      },
      icon: Image.asset(assetsPath),
    );
  }

  void setAssetsPath() {
    switch (widget.buttonType) {
      case "kakao":
        assetsPath = PATH_BTN_KAKAO;
        break;

      case "naver":
        assetsPath = PATH_BTN_NAVER;
        break;

      case "google":
        assetsPath = PATH_BTN_GOOGLE;
        break;
    }
  }
}
