void main() {
  Restaurant restaurant1 = Restaurant('스테이크', 50000);
  Restaurant restaurant2 = Restaurant('스파게티', 15000, '치즈볼', '젤라또');

  restaurant1.recipt();
  print('---------------------------');
  restaurant2.recipt();
}

class Restaurant {
  String? mainDish;
  int? price;
  String? sideDish;
  String? dessert;

  Restaurant(this.mainDish, this.price, [this.sideDish = '선택안함', this.dessert = '선택안함']);

  void recipt() {
    print('메인 디쉬: ${this.mainDish}');
    print('가격: ${this.price}');
    print('사이드 디쉬: ${this.sideDish}');
    print('디저트: ${this.dessert}');
  }
}