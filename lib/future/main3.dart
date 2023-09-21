void main() {
  // Future (미래 타입)
  Future<String> name = Future.value('텐코딩');
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  print(name);
  print(number);
  print(isTrue);
  print('=============================');

  // Future 타입을 소화 시키는 방법 2
  // 방법 2: 콜백 메서드
  // Future.then(); 함수를 사용할 수 있다.
  name.then((v) => print('Future type에서 값 꺼내기: $v'));
  number.then((value) => print('값 확인: $value'));
  isTrue.then((value) => print('참 또는 거짓: $value'));
  // 밑에 구분선이 먼저 출력됨.
  // 비동기 프로그래밍은 순서를 보장 하지 않는다는 것을 보여주는 예
  print('=============================');
}