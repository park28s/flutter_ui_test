import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_test/components/my_bottom_nav_bar.dart';
import 'package:flutter_ui_test/size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    centerTitle: true,
    title: Image.asset('assets/images/logo.png'),
    leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'), onPressed: () {}
// Svg = xml기반의 백터 그래픽 파일형식 : 확대를 해도 픽셀이 깨지지 않는다. 패키지 import가 필요함.
        ),
    actions: [
      IconButton(
          icon: Icon(Icons.search, color: Colors.black, size: 30.0),
          onPressed: () {})
    ],
  );
}