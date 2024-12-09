import 'package:flutter/material.dart';
import 'number_screen_3.dart';

class NumberScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number 2 Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.white,
        child: Center( // Contents are now centered
          child: Column(
            mainAxisSize: MainAxisSize.min, // Center vertically
            children: [
              Text(
                'Number 2',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to Number Screen 3
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NumberScreen3()),
                  );
                },
                child: Text('Go to Number 3'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Go back to the previous screen
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
