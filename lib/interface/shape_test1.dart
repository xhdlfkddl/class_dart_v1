abstract class Shape {
  double area() {
    return 0.0;
  }
}
// 위처럼 body를 만들어 두고 implements 가 아닌
// extends 를 사용하면 오류가 사라지게 됨.
// 이유: implements 는 메서드 재정의 강제성이 존재 하기 때문
class Circle implements Shape {

  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void main() {
  List<Shape> shapes = [Circle(5.0), Rectangle(4.0, 5.0)];

  shapes.forEach((e) {
    print(e.area());
  });
}