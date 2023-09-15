// abstract 를 이용하여 추상메서드 생성
abstract class Shape {
  // 추상 메서드 선언
  double area(); // 메서드에 body가 없고, 선언부만 존재함

  // 일반 메서드
  void display() {
    print('This is Shape class');
  }
}

// 자식 클래스는 보다 구체적인 클래스로 설계 해야 함
// Shape 클래스에는 추상 메서드가 존재해서 extends 하면 오류 발생
// 해결 방법: @override
class Circle extends Shape {

  double radius;

  Circle(this.radius);

  @override
  double area() {
    return radius * radius * 3.14;
  }

  @override
  void display() {
    super.display();
    print('원의 반지름 값은: $radius');
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }

  @override
  void display() {
    print('직사각형의 가로: $width, 세로: $height');
  }
}

void main() {
  // 추상 클래스는 new와 생성자를 호출하여 메모리에 올릴 수 없음.
  // 정의는 가능.
  // Shape shape = Shape();

  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);

  List<Shape> shapes = [circle, rectangle];
  for(var s in shapes) {
    s.display();
    print(s.area());
    print('--------------------');
  }
}

// !!Dart 에서 익명 구현 클래스 개념은 없음!!