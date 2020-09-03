import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenheight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenheight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenheight * 0.024
        : screenWidth * 0.024;
    // 핸드폰 종류와 상관없이 화면크기를 자동으로 불러오는 작업
  }
}
