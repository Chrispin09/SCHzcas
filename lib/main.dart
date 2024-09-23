import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Alert Dialog Demo',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        title: const Text('Alert Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          // Apply button styling here
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.red, // Text color
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding inside the button
            textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Text style
          ),
          onPressed: () {
            _showAlertDialog(context);
          },
          child: const Text('Show Alert'), // Button text
        ),
      ),
    );
  }

  // Function to show the AlertDialog
  void _showAlertDialog(BuildContext context) {
    // Create the AlertDialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: const Text('This is an alert!'),
          actions: <Widget>[
            TextButton(
              child: const Text('Dismiss'),
              onPressed: () {
                Navigator.of(context).pop(); // Closes the alert dialog
              },
            ),
          ],
        );
      },
    );
  }
}
