import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Greeting App'),
        ),
        body: const GreetingScreen(),
      ),
    );
  }
}

class GreetingScreen extends StatelessWidget {
  const GreetingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Welcome to Flutter!',
            style: TextStyle(fontSize: 20.0),
          ),
          const SizedBox(height: 20),
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flutter_logo.svg/2048px-Flutter_logo.svg.png',
            height: 150,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Button Pressed!'),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: const Text('Press me'),
          ),
        ],
      ),
    );
  }
}
