import 'package:flutter_v1/bicycle.dart';

void main() {
  // 생성자는 인스턴스와 될 가장 먼저 실행되는 영역이다.
  // 자바와 마찬가지로 기본 생성자는 Dart 컴라일러가 알아서 넣어준다.
  Bicycle bicycle = Bicycle();

  // 초기화
  bicycle.color = 'Red';
  bicycle.size = 10;
  bicycle.currentSpeed = 40;

  bicycle.showInfo();
}