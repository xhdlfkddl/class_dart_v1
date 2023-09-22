import 'package:flutter/material.dart';

void main() {
  // 플러터를 실행하기 위한 함수
  // 해당 함수는 전달 된 위젯을 어플리케이션의 루트 위젯으로 만들어 줌
  runApp(
    // 색깔이 다른 것들이 모두 위젯 = 객체
    // Center 위젯은 자식 위젯을 화면 중앙에 배치
    // 현재 코드 상 Center -> Text 위젯이 자식
    Center(
      // Text 위젯은 화면에 문자열을 표시 하는 위젯
      // textDirection: 글자의 방향을 결정
      // ltr: left to right / rtl: right to left
      child: Text('Hello World', textDirection: TextDirection.ltr),
    ),
  );
}
