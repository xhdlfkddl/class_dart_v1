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
          title: Text("Hi"),
        ),
        body: MyContainer(),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  // 상수 기본 생성 {} 상위 객체에 key 값을 넘겨준다.
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // 너비를 무한으로 늘리고 싶을 때
      // width: double.infinity,
      width: 200,
      height: 200,
      // color: Colors.amber,
      // color: Color(0xFFAABBCC), // RGB
      child: Container(
          color: Colors.amber,
          child: Center(
              child: Text('Container', textDirection: TextDirection.ltr,))
      ),
      // padding 설정 (all 4면 모두)
      padding: EdgeInsets.all(20),
      // margin 설정 (좌측, 상단, 우측, 하단)
      margin: EdgeInsets.fromLTRB(20, 100, 10, 10),
      // 최상위 속성
      // 주의!! BoxDecoration을 감싸는 Container 위젯에
      // color 선언이 되어있다면 에러가 발생함.
      decoration: BoxDecoration(
        color: Colors.amberAccent.shade100,
        border: Border.all(color: Colors.red, width: 5, style: BorderStyle.solid),
        // 모서리 둥글게
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          // offset: 그림자 설정
          BoxShadow(color: Colors.blue,
                    offset: Offset(-10, -10),
                    blurRadius: 10.0,
                    spreadRadius: 10,
          )
        ],
      ),
    );
  }
}
