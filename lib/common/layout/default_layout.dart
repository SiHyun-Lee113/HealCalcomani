import 'package:flutter/material.dart';
import 'package:healcalcomani/common/const/const_color.dart';
import 'package:healcalcomani/common/const/const_string.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  final String? title;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;

  const DefaultLayout({
    super.key,
    required this.child,
    this.title,
    this.bottomNavigationBar,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      appBar: renderAppbar(),
      body: child,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }

  AppBar? renderAppbar() {
    if (title == NO_APPBAR) {
      return null;
    } else if (title == null) {
      return AppBar(
        backgroundColor: PRIMARY_COLOR,
        elevation: 0,
        title: Image.asset("assets/images/txt_healcalcomani.png"),
      );
    } else {
      return AppBar(
        backgroundColor: PRIMARY_COLOR,
        elevation: 0,
        title: Text(
          title!,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        foregroundColor: BODY_100_COLOR,
      );
    }
  }
}
