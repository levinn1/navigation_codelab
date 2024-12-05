import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu), // Navigation menu icon
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Open the drawer
              },
            );
          },
        ),
      ),
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
                Navigator.pop(context); // Close drawer if already on Second Screen
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
        color: Colors.lightGreen[100], // Light green background
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/third');
                },
                child: Text('Go to Third Screen'),
              ),
              SizedBox(height: 20), // Add a gap of 20 pixels
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go Back to First Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
