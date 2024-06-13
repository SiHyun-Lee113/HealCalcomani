import 'package:flutter/material.dart';
import 'package:healcalcomani/common/const/const_color.dart';
import 'package:healcalcomani/common/const/const_string.dart';
import 'package:healcalcomani/common/layout/default_layout.dart';
import 'package:healcalcomani/schedule/component/cp_week_board.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      bottomNavigationBar: buildBottomNavi(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(PATH_IMG_LOGO_ONLY),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Text(
                "${DateTime.now()}",
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          WeekBoard(),
        ],
      ),
    );
  }

  Widget buildBottomNavi() {
    return SafeArea(
      child: Container(
        height: 56, //TODO: In Future remove the height
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(
          color: BODY_70_COLOR,
          borderRadius: BorderRadius.all(Radius.circular(24)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 20),
              blurRadius: 20,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
                child: InkWell(
              onTap: () {},
              child: const Text(
                'TRAINING LOG',
                textAlign: TextAlign.center,
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {},
              child: const Text(
                'TRAINING',
                textAlign: TextAlign.center,
              ),
            )),
            Expanded(
                child: InkWell(
              onTap: () {},
              child: const Text(
                'MY PAGE',
                textAlign: TextAlign.center,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
