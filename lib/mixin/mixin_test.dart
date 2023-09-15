// 믹스인 정의 - mixin 키워드를 사용
mixin LoggingMixin {
  String tag = "LoggingMixin";

  // 믹스인은 생성자를 가질 수 없음!!
  // LoggingMixin(this.tag);

  void log(String message) {
    print('Log - $tag: $message');
  }
}

// 믹스인의 활용 - with 키워드를 사용
class User with LoggingMixin {
  String name;
  User(this.name);
}

void main() {
  User user = User('길동 홍');
  user.tag = 'User';
  user.log('TEST USER CLASS');
}