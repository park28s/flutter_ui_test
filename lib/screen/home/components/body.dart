import 'package:flutter/material.dart';
import 'package:flutter_ui_test/screen/home/components/categories.dart';
import 'package:flutter_ui_test/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        //IOS 와 안드로이드 환경에서 화면을 자동으로 인식하여 콘텐츠를 보호해주는 위젯
        child: Column(
      children: [
        Categories(),
        Expanded(
            //Row나 Column 같은 곳에서 원하는 widget을 남은 공간에서 넓게 표시하고 싶을때 사용하는 위젯
            // - flex 옵션으로 공간을 우선적으로 배정할수 있음
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizeconfig.difaultSize * 2),//대칭적인, 조와로운
          child: GridView.builder(
            //자동 리스트뷰
              itemCount: recipeBundles.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: //크로스축을계산
                    Sizeconfig.orientation == Orientation.landscape ? 2 : 1,
                mainAxisSpacing: 20, //메인축공간간격
                crossAxisSpacing: //크로스축공간간격
                    Sizeconfig.orientation == Orientation.landscape
                        ? Sizeconfig.difaultSize * 2
                        : 0,
                childAspectRatio: 1.65, //비율설정
              ),
              itemBuilder: (context, index) => RecipeBundelCard(
                  recipeBundle: recipeBundles[index], press: () {})),
        ))
      ],
    ));
  }
}
