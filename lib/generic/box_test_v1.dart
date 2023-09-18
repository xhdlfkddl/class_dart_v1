// generic 선언 방법
// Box 안에는 여러 타입의 물건을 넣을 수 있다고 가정
class Box<T> {

  T value;
  Box(this.value);

  T getValue() {
    return value;
  }

}


void main() {
  // 1단계
  var stringBox = Box<String>("String 타입");
  print(stringBox.getValue());

  // 2단계
  var intBox = Box<int>(123);
  print(intBox.getValue());

  // 제네릭 함수의 사용
  var numbers = [1, 2, 3, 4, 5];
  var firstEven = findFirst(numbers, (n) => n % 2 == 0);
  print("first Even: $firstEven");

  var firstOdd = findFirst(numbers, (n) => n % 2 != 0);
  print("first Odd: $firstOdd");

  var lastEven = findFirst(numbers, (n) => n % 2 ==0);
  print("last Even: $lastEven");
}

// 제네릭 함수의 사용
T? findFirst<T>(List<T> items,
              bool Function(T) check) {

  var count = 0;
  // 처음부터 끝까지 반복 처리
  for(var i in items) {
    count++;
    print('count: $count, item: $i');
    // check는 함수
    // check는 어떤 데이터 타입이든 매개변수로 담을 수 있음
    // check 함수의 구현 부분은 사용 시점에 구현하고,
    // 단 그 구현 결과의 데이터 타입은 bool 타입이 되어야 함.
    if(check(i)) {
      return i;
    }
  }
  return null;
}

// 쌉 심화
int? findLastEvent<T>(List<int> items, bool Function(T) check) {
  var count = items.length - 1;

  for(var i = count; i >= 0; i--) {
      if (items[i] % 2 == 0) {
        return items[i];
    }
  }

  return null;
}