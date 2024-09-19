import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple UI App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple UI App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Welcome message
              Text(
                'Welcome to the Simple UI App!',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20), // Space between text and button
              
              // ElevatedButton
              ElevatedButton(
                onPressed: () {
                  print('Button Pressed!');
                },
                child: Text('Press Me'),
              ),
              SizedBox(height: 20), // Space between button and image
              
              // Image from the internet
              Image.network(
                'https://via.placeholder.com/150',
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}