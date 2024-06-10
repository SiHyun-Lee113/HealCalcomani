import 'package:flutter/material.dart';
import 'package:healcalcomani/auth/component/cp_login_button.dart';
import 'package:healcalcomani/common/component/cp_config_button.dart';
import 'package:healcalcomani/common/component/cp_dialog.dart';
import 'package:healcalcomani/schedule/component/cp_schedule_description.dart';
import 'package:healcalcomani/schedule/component/cp_week_board.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // 기본 텍스트 스타일 설정
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white, fontSize: 16),
          displayLarge: TextStyle(color: Colors.white),
          displayMedium: TextStyle(color: Colors.white),
          displaySmall: TextStyle(color: Colors.white),
          headlineMedium: TextStyle(color: Colors.white),
          headlineSmall: TextStyle(color: Colors.white),
          titleLarge: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white),
          titleSmall: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
          labelLarge: TextStyle(color: Colors.white),
          labelSmall: TextStyle(color: Colors.white),
        ),
      ),
      home: const TestApp(),
    );
  }
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginButton(buttonType: 'kakao'),
            LoginButton(buttonType: 'naver'),
            LoginButton(buttonType: 'google'),
            TrainingConfigurationButton(partName: '가슴'),
            TrainingConfigurationButton(
              partName: '가슴',
              activate: false,
            ),
            TrainingConfigurationButton(partName: '허벅지'),
            TrainingConfigurationButton(partName: '종아리'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TrainingConfigurationButton(
                  partName: '가슴',
                  activate: false,
                ),
                TrainingConfigurationButton(partName: '허벅지'),
                TrainingConfigurationButton(partName: '종아리'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            WeekBoard(),
            SizedBox(
              height: 10,
            ),
            ScheduleDescription(),
            ElevatedButton(
              onPressed: () {
                showCustomDialog(context);
              },
              child: Text("test"),
            ),
          ],
        ),
      ),
    );
  }
}
