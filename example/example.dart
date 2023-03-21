import 'package:adaptive_screen/adaptive_screen.dart';
import 'package:flutter/material.dart';


class MyExample extends StatelessWidget {
  const MyExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AdaptiveScreen(
      phone: Text('will show when screen on phone size'),
      largeScreen: Text('will show when screen on large screen size'),
      mediumScreen: Text('will show when screen on medium screen size'),
    );
  }
}