
void main() {
  // name 이라는 변수는 null이 아닌 문자열만 가질 수 있다.
  String name = "John";

  // null이 아닌 정수 값만 가질 수 있다.
  int age = 30;

  // nullableName 이라는 변수는 문자열 또는 null 값을 가질 수 있다.
  String? nullableName;

  // nullableInt 라는 변수는 정수 값 또는 null을 가질 수 있다.
  int? nullableInt;

  // 방어적 코드 작성!!
  if (nullableName != null) {
    print("name: $nullableName");
  }

}