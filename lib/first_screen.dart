import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigation Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('First Screen'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: Text('Second Screen'),
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
            ListTile(
              title: Text('Third Screen'),
              onTap: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.lightBlue[100], // Light blue background
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to the second screen using named route
                  Navigator.pushNamed(context, '/second');
                },
                child: Text('Go to Second Screen'),
              ),
              SizedBox(height: 20), // Add a gap of 20 pixels
              ElevatedButton(
                onPressed: () {
                  // Navigate to the third screen using named route
                  Navigator.pushNamed(context, '/third');
                },
                child: Text('Go to Third Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
