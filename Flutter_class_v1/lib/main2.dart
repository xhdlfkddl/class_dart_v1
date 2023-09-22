import 'package:flutter/material.dart';

void main() {
  runApp(Center(
    child: Container(
      child: const Center(
          // Center로 감싸고 싶을 때는 Alt + Enter -> Wrap Center
          child: const Text(
        'Hi Flutter',
        textDirection: TextDirection.ltr,
      )),
      width: 100,
      height: 100,
      color: Colors.blueGrey,
    ),
  ));
}
