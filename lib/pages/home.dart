import 'package:bottom_navigation/localization/LocalText.dart';
import 'package:bottom_navigation/pages/setting.dart';
import 'package:bottom_navigation/themes/theme.dart';
import 'package:bottom_navigation/widget/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'chat.dart';
import 'dashboard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;

  int selectedIndex = 0;
  List<Widget> listWidgets = [DashBoard(), Chat(), Setting()];

  @override
  Widget build(BuildContext context) {
    String title = LocalText.of(context).load("app_name");

    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      
      bottomNavigationBar: BottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.home, title: LocalText.of(context).load("home")),
          TabData(
              iconData: Icons.chat, title: LocalText.of(context).load("chat")),
          TabData(
              iconData: Icons.settings,
              title: LocalText.of(context).load("setting"))
        ],
        onTabChangedListener: (position) {
          setState(() {
            selectedIndex = position;

            onItemTapped;
//              currentPage = position;
          });
        },
      ),

      body: Container(child: listWidgets[selectedIndex]),


//        body: Container(
//          child: Center(child: _buildChild(context)),
//        )
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget _buildChild() {
    if (currentPage == 0) {
      return Text("This is my Home page",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.blueMaterial[900].withOpacity(0.7)));
    } else if (currentPage == 1) {
      return Text(
        "This is my Chat Page",
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppColors.accentColor.withOpacity(0.7)),
      );
    } else if (currentPage == 2) {
      return Text(
        "This is my Settings Page",
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryDark.withOpacity(0.7)),
      );
    } else {
      return Text("Other Page", textScaleFactor: 10.0);
    }
  }
}
