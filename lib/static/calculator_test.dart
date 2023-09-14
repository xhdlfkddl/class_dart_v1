class Calculator {
  int total = 100;

  static int plus(int a, int b) {
    // 정적 메서드 안 에서는 멤버 변수(= 객체가 생성된 이후 사용될 변수)를
    // 사용할 수 없음.
    // 메모리에 올라가기 전에 class 에서 호출할 수 있기 때문에 없는 것으로 판단.
    // total += 1;

    return a + b;
  }
}

void main() {
  int result = Calculator.plus(10, 10);
  print('result: $result');

  print('=====================');

  int result2 = Calculator.plus(1000, 10);
  print('result2: $result2');

  Calculator calculator = Calculator();
  // -> 호출이 안됨.
  // calculator.plus();
}