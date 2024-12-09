import 'package:flutter/material.dart';
import 'number_screen_1.dart';
import 'number_screen_2.dart';
import 'number_screen_3.dart';
import 'number_screen_4.dart';

class NumberScreensSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/number2':
            return MaterialPageRoute(builder: (context) => NumberScreen2());
          case '/number3':
            return MaterialPageRoute(builder: (context) => NumberScreen3());
          case '/number4':
            return MaterialPageRoute(builder: (context) => NumberScreen4());
          default:
            return MaterialPageRoute(builder: (context) => NumberScreen1());
        }
      },
    );
  }
}
