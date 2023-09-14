// 메인함수
void main() {
  // 1단계
  Rectangle rectangle = Rectangle();
  // double result = rectangle.calculateArea();
  // print('직사각형의 넓이는: $result');

  try {
    //예외가 발생할 수 있는 코드를 작성하는 곳
    double result = rectangle.calculateArea();
    print('직사각형의 넓이는: $result');

    print('여기는 실행 안되는 공간!!');
    print('-----------------------');
  } catch(e) {
    print('에러발생!! $e');
  }
  print('여기는 실행 되는 공간!!');
  print('-----------------------');

  rectangle.width = 3.0;
  rectangle.height = 3.14;
}

class Rectangle {
  double? width;
  double? height;

  double calculateArea() {
    return width! * height!; // 개발자가 명시적으로 !를 사용하여 null이 아닌 것을 명시할 수 있음.
  }
}