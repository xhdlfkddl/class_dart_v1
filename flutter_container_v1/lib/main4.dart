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
        body: Column(
          children: [
            Flexible(
                flex: 2,
                child: Container(
                  color: Colors.red, width: 500,height: 800,)
            ),
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.blue, width: 500,height: 1000,)
            ),
          ],
        ),
      ),
    );
  }
}

