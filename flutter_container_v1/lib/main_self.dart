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
        body: Container(
          child: Column(
            children: [

              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.black,
                          child: Center(
                            child: Text('1'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.yellow,
                          child: Center(
                            child: Text('1'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.red,
                          child: Center(
                            child: Text('1'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.deepPurple,
                          child: Center(
                            child: Text('1'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.pink,
                          child: Center(
                            child: Text('1'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.lime,
                          child: Center(
                            child: Text('1'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.amberAccent,
                          child: Center(
                            child: Text('1'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.black12,
                          child: Center(
                            child: Text('1'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.deepOrange,
                          child: Center(
                            child: Text('1'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
