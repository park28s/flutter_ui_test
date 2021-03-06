import 'package:flutter/material.dart';
import 'package:flutter_ui_test/models/NavItem.dart';
import 'package:flutter_ui_test/screen/home/home_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'flutter UI test',
        theme: ThemeData(
          //backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
            visualDensity: VisualDensity.adaptivePlatformDensity
          // 비주얼밀도는 플랫폼밀도에 적응
        ),
        home: HomeScreen(),
      ),
    );
  }
}

