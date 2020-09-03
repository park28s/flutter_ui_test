import 'package:flutter/widgets.dart';

class Sizeconfig {
  static MediaQueryData _mediaQueryData; //미디어 정보의 속성 (넓이 높이등)
  static double screenWidth; // 스크린높이는 정수형
  static double screenHeigth;
  static double difaultSize;
  static Orientation orientation; // 방향설정

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context); //.of(context) = 무시하고
    screenWidth = _mediaQueryData.size.width; // 디바이스에 넓이를 얻고 가져온다
    screenHeigth = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    difaultSize = orientation == Orientation.landscape
        //화면크기가 증가하거나 감소하면 default size도 달라진다.
        ? screenHeigth = 0.024
        : screenWidth = 0.024;
  }
}