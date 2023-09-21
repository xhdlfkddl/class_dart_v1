void main() {
  Exception exception;
  Error error;

  try {
    // Dart 에서 return 을 만나면 try 문은 실행이 될까??
    // 결과: 실행 됨.
    return;
    int result = 10 ~/ 0;
    print('result: $result');
  } on IntegerDivisionByZeroException {
    print('어떤 수를 0으로 나눌 수 없습니다!');
  } on UnsupportedError {
    print('제공 하지 않는 라이브러리 입니다!');
  } catch(e) {
    // 모든 에러를 표시
    print('Error: $e');
  } finally {
    print('실행 종료ㅋ');
  }
  print('============================');
}