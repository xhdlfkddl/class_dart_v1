// await를 가지는 함수(= 여기서는 'main'함수)는 async를 선언해줘야한다.
void main() async {
  // 동기성 - 모든 코드가 순차적으로 진행 되는 형태
  // 비동기성 - 코드가 동시 다발적으로 실행, 순차적 보장을 할 수 없는 상태

  // 순서대로 출력 됨(= 동기)
  print('task1.....');
  var data1 = await fetchData(); // 기대값 : '2초가 지났습니다.' 문자열
  // 실제 출력 값 : data1: Instance of 'Future<String>' (= 미래 타입)
  //              data1.runtimeType: Future<String>
  print(data1);
  print('task2.....');
  print('task3.....');
}

Future<String> fetchData() {
  // 2초 후 실행되는 코드를 작성 할 예정
  // Future.delayed(duration);
  // 첫번째 매개변수 = Duration 이라는 타입의 변수 = 시간을 관장하는 데이터 타입
  // 두번째 매개변수 = 함수를 적을 수 있는 곳 = 옵션 값 = 있어도 되고 없어도 됨
  // 컴파일 시점에 바뀌는 것이 아니기 때문에 const로 선언해주는 것이 좋음
  // return Future.delayed(const Duration(seconds: 2), () {
  //   return "2초가 지났습니다.";
  // }); // = Tread.sleep();

  // 화살표 함수로 수정했을 때
  return Future.delayed(const Duration(seconds: 2), () => '2초가 지났습니다.');
}