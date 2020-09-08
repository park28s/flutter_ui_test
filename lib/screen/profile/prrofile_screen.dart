import 'package:flutter/material.dart';
import 'package:flutter_ui_test/constants.dart';
import 'package:flutter_ui_test/screen/home/components/body.dart';
import 'package:flutter_ui_test/size_config.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
  return AppBar(
    backgroundColor: KPrimaryColor,
    leading: SizedBox(),
    centerTitle: true,
    title: Text('Profile'),
    actions: [
      FlatButton(
          onPressed: () {},
          child: Text('Edit',
          style: TextStyle(
            color: Colors.white,
            fontSize: SizeConfig.difaultSize * 1.6,
            fontWeight: FontWeight.bold
          ),
          ))
    ],
  );
  }
}
