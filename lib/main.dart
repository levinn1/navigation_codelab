import 'package:flutter/material.dart';
import 'color_screens_section.dart';
import 'number_screens_section.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-Section App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppWithBottomNavBar(),
    );
  }
}

class AppWithBottomNavBar extends StatefulWidget {
  @override
  _AppWithBottomNavBarState createState() => _AppWithBottomNavBarState();
}

class _AppWithBottomNavBarState extends State<AppWithBottomNavBar> {
  int _currentIndex = 0;

  // Sections: Color Screens and Number Screens
  final List<Widget> _sections = [
    ColorScreensSection(), // "Color Screens" Section
    NumberScreensSection(), // "Number Screens" Section
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _sections[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens),
            label: 'Color Screens',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: 'Number Screens',
          ),
        ],
      ),
    );
  }
}
