import 'package:flutter/material.dart';
import 'package:healcalcomani/common/const/const_color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/img_logo.png',
              width: 340,
              height: 230,
            ),
          ),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
