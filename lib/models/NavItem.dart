import 'package:flutter/material.dart';
import 'package:flutter_ui_test/screen/home/home_screen.dart';
import 'package:flutter_ui_test/screen/profile/prrofile_screen.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;

  NavItem({this.id, this.icon, this.destination});

  bool destinationChecker() {
    if (destination != null) {
      return true;
    }
    return false;
  }
}

class NavItems extends ChangeNotifier {
  int selectedIndex = 0;

  void chnageNavIndex({int index}) {
    selectedIndex = index;
    notifyListeners();
  }

  List items = [
    NavItem(id: 1, icon: 'assets/icons/home.svg', destination: HomeScreen()),
    NavItem(
      id: 2,
      icon: 'assets/icons/list.svg',
    ),
    NavItem(
      id: 3,
      icon: 'assets/icons/camera.svg',
    ),
    NavItem(
      id: 4,
      icon: 'assets/icons/chef_nav.svg',
    ),
    NavItem(id: 5, icon: 'assets/icons/user.svg', destination: ProfileScreen()),
  ];
}
