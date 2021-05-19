import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platzi_reto_4/home_page/home_page.dart';
import 'package:platzi_reto_4/notification_page/notification_page.dart';
import 'package:platzi_reto_4/profile_page/profile_page.dart';
import 'package:platzi_reto_4/search_page/search_page.dart';
import 'package:platzi_reto_4/site_page/site_page.dart';

class NavBarWidget extends StatefulWidget {
  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int tapIndex = 0;
  final List<Widget> tapView = [
    HomePage(),
    SearchPage(),
    SitePage(),
    NotificationPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    Scaffold generalNavBar = Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF7986cb),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0xFF7986cb),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pin_drop_outlined,
              color: Color(0xFF7986cb),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Color(0xFF7986cb),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Color(0xFF7986cb),
            ),
            label: "",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) => HomePage(),
            );
            break;
          case 1:
            return CupertinoTabView(
              builder: (context) => SearchPage(),
            );
            break;
          case 2:
            return CupertinoTabView(
              builder: (context) => SitePage(),
            );
            break;
          case 3:
            return CupertinoTabView(
              builder: (context) => NotificationPage(),
            );
            break;
          case 4:
            return CupertinoTabView(
              builder: (context) => ProfilePage(),
            );
            break;
          default:
            return CupertinoTabView(
              builder: (context) => HomePage(),
            );
            break;
        }
      },
    ));
    return generalNavBar;
  }

  void onTapTapped(int index) {
    setState(() {
      tapIndex = index;
    });
  }
}
