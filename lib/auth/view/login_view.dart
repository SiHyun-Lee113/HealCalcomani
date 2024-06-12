import 'package:flutter/material.dart';
import 'package:healcalcomani/common/const/const_string.dart';
import 'package:healcalcomani/common/layout/default_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        title: NO_APPBAR,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(PATH_TXT_APP_NAME),
              Image.asset(
                PATH_IMG_LOGO_ONLY,
                width: 200,
                height: 135,
              ),
              const SizedBox(
                height: 200,
              ),
              Image.asset(PATH_TXT_LOGIN),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      PATH_BTN_KAKAO,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(PATH_BTN_NAVER),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(PATH_BTN_GOOGLE),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
