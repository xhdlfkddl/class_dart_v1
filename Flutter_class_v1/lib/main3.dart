// Flutter의 Material 라이브러리를 가져옴
import 'package:flutter/material.dart';

void main() => runApp(MyStatefulApp());

// 단축키 stf
class MyStatefulApp extends StatefulWidget {
  // 생성자
  const MyStatefulApp({super.key});

  // createState() 메서드는 State 객체를 생성함
  // 즉, State 객체가 있다는 것은 StatefulWidget이 된다는 말.
  @override
  State<MyStatefulApp> createState() => _MyStatefulAppState();
} // end of MyStatefulApp

class _MyStatefulAppState extends State<MyStatefulApp> {
  int _counter = 0;

  // 메서드
  void _incrementCounter() {
    // StatefulWidget 위젯과 함께 사용되며 위젯의 상태를 변경,
    // 화면을 다시 그리도록 알려주는 역할 - build() 실행
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build() 메서드 호출 확인!!');

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('Count: $_counter'),
          ),
        ),
      ),
    );
  }
} // end of _MyStatefulAppState
