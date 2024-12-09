import 'package:flutter/material.dart';
import 'number_screen_2.dart';


class NumberScreen1 extends StatefulWidget {
  @override
  _NumberScreen1State createState() => _NumberScreen1State();
}

class _NumberScreen1State extends State<NumberScreen1> {
  final TextEditingController _controller = TextEditingController();

  void _generateScreens(BuildContext context) {
    int? count = int.tryParse(_controller.text);

    if (count == null || count < 1 || count > 5) {
      // Show error if input is invalid
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a valid number (1–5).')),
      );
      return;
    }

    // Create the first dynamically generated screen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DynamicScreen(
          number: 1,
          totalScreens: count,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number 1 Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Number 1',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NumberScreen2()),
                  );
                },
                child: Text('Go to Number 2'),
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
              SizedBox(height: 40),
              Text(
                'Dynamic Route Generator',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Enter number of screens to generate (1–5)',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _generateScreens(context);
                },
                child: Text('Generate Screens'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DynamicScreen extends StatelessWidget {
  final int number;
  final int totalScreens;

  DynamicScreen({required this.number, required this.totalScreens});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Screen $number'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Dynamic Screen $number',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              if (number < totalScreens)
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the next dynamically generated screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DynamicScreen(
                          number: number + 1,
                          totalScreens: totalScreens,
                        ),
                      ),
                    );
                  },
                  child: Text('Go to Screen ${number + 1}'),
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
