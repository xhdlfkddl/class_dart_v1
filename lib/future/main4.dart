void main() {
  var result = addNumbers1(10, 20);
  print('result: $result');
  
  addNumbers2(100, 200).then((value) => print('결과: $value'));
}

// 방법 1: Future 함수 선언
// 동기적 방식
Future<int> addNumbers1(int n1, int n2) async {
  print('함수 시작!');

  var result = 0;
  await Future.delayed(const Duration(seconds: 2), () {
    result = n1 + n2;
  });
  print('함수 종료!!');

  return result;
}

// 방법 2: 
Future<int> addNumbers2(int n1, int n2) {
  return Future.delayed(const Duration(seconds: 2), () => n1 + n2);
}