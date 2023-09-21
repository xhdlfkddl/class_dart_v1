void main() {
  Exception exception;
  Error error;

  /*
  try {
    // 예외 발생
    throw Exception('UnKnown Error');
  } catch(e) {
    // 모든 에러를 표시
    print('Error: $e');
  }
    print('end of code');
  */

  // 2단계
  try {
    throw TypeError();
  } on TypeError {
      print('type Error 예외 처리!');
  } catch(e, s) {
    print('모든 예외 처리!');
  }
}