import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';
import 'fourth_screen.dart';

class ColorScreensSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/second':
            return MaterialPageRoute(builder: (context) => SecondScreen());
          case '/third':
            return MaterialPageRoute(builder: (context) => ThirdScreen());
          case '/fourth':
            return MaterialPageRoute(builder: (context) => FourthScreen());
          default:
            return MaterialPageRoute(builder: (context) => FirstScreen());
        }
      },
    );
  }
}
