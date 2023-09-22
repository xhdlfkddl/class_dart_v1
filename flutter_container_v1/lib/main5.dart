import 'package:flutter/material.dart';
import 'package:flutter_container_v1/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Text('1'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text('2'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
                child: Center(
                  child: Text('3'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
