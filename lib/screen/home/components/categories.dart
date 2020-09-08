import 'package:flutter/material.dart';
import 'file:///D:/flutter_project/flutter_ui_test/lib/constants.dart';
import 'file:///D:/flutter_project/flutter_ui_test/lib/size_config.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['All', 'Indian', 'Italian', 'Mexican', 'Chinese'];

  // 리스트 카테고리 변수 선언
  int selectedIndex = 0; // 기본 선택은 0번부터

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize = 2),
      // 대칭 패딩값, 수직으로 SizeConfig difault값을 2로 정함
      child: SizedBox(
        height: SizeConfig.defaultSize = 3.5,
        child: ListView.builder(
            scrollDirection: Axis.horizontal, // 스크롤방향 : 축, 세로
            itemCount: categories.length, // 몇개를 나열할 것인지 : 카테고리 길이 많큼 나열
            itemBuilder: (context, Index) => buildcategoriItem(Index)
          // ListView.builder는 itemBuiler: (context, index) 변수가 반드시 같이 사용되며, 이 변수는 categories 내용을 출력한다.
        ),
      ),
    );
  }


Widget buildcategoriItem(int index) {
  return GestureDetector( // 제스처디텍터 = 제스처 검출기
    onTap: () {
      setState(() {
        selectedIndex = index;
      });
    },
    child: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: SizeConfig.defaultSize = 2),
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize = 2,
          vertical: SizeConfig.defaultSize = 0.5),
      decoration: BoxDecoration(
          color: selectedIndex == index ? Color(0xFFEFF3EE) : Colors
              .transparent,
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize = 1.6)
      ),
      child: Text(
        categories[index],
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ? KPrimaryColor : Color(0xFFC2C2B5)
        ),
      ),
    ),
  );
}
