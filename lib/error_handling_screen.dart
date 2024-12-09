import 'package:flutter/material.dart';

class ErrorHandlingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error Handling Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.pink.shade100,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Error Handling Example',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'This screen demonstrates error handling for invalid navigation.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  try {
                    // Attempt navigation to a non-existent route
                    Navigator.pushNamed(context, '/nonexistent');
                  } catch (e) {
                    // Catch navigation errors and display a SnackBar
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Navigation failed: Route does not exist!'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                child: Text('Navigate to Non-Existent Route'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                child: Text('Go Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
