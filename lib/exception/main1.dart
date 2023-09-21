void main() {
  Exception exception;
  Error error;

  try {
    // ~/ : 몫 계산
    int result = 10 ~/ 0;
    print('result: $result');
  } catch(e, stackTrace) {
    // 예외 처리 코드
    print('An error: $e');
    // 어느 부분에서 에러가 났는지 알려줌
    print('A stackTrace: $stackTrace');
  } finally {
    // 예외 발생 여부와 상관 없이 항상 실행 되는 코드
    // 자원을 낭비 하는 것을 방지 하기 위해 작성
    print('반드시 실행되는 코드!!');
  }

  // 예외 처리가 되더라도 프로그램은 그대로 실행 되는지 확인하는 print 메서드
  // 출력 됨.
  print('============================');
}