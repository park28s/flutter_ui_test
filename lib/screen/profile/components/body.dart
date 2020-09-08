import 'package:flutter/material.dart';
import 'package:flutter_ui_test/screen/profile/components/info.dart';
import 'package:flutter_ui_test/screen/profile/components/profile_menu_item.dart';
import 'package:flutter_ui_test/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Info(
            image: 'assets/images/pic.png',
            name: 'Jhon Doe',
            email: 'Jhondoe01@gmail.com'
          ),
          SizedBox(
            height: SizeConfig.defaultSize * 2
          ),
          ProfileMenuItem(
            iconSrc: 'assets/icons/bookmark_fill.svg',
            title: 'Saved Recipe',
            press: () {}
          ),
          ProfileMenuItem(
              iconSrc: 'assets/icons/chef_color.svg',
              title: 'Super Plan',
              press: () {}
          ),
          ProfileMenuItem(
              iconSrc: 'assets/icons/language.svg',
              title: 'Change Language',
              press: () {}
          ),
          ProfileMenuItem(
              iconSrc: 'assets/icons/info.svg',
              title: 'Help',
              press: () {}
          ),
        ],
      ),
    );
  }
}
