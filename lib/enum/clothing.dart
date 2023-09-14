enum ClothingSize { small, medium, large, XLarge, XXLarge }

enum TemperatureRange { freezing, cold, warm, hot }

void main() {

  var size = ClothingSize.large;
  print(size.runtimeType);

  switch(size) {
    case ClothingSize.small:
      print('small 사이즈');
      break;
    case ClothingSize.medium:
      print('medium 사이즈');
      break;
    case ClothingSize.large:
      print('large size');
      break;
    case ClothingSize.XLarge:
      print('big 사이즈');
      break;
    case ClothingSize.XXLarge:
      print('Huge size');
      break;
      // 모든 조건을 작성하지않았다면 'default' 작성
    default:
      print('몰라용ㅋ');
  }

}