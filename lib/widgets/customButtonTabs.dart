import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:instadark/HomePage.dart';

class CustomBottomTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _CustomButtomTabsState();
  }
}

class _CustomButtomTabsState extends State<CustomBottomTabs> {
  int _index = 0;
  var pages = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: _onItemTapped,
        iconSize: 32.0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(MdiIcons.home, color: Colors.white),
            icon: Icon(
              MdiIcons.homeOutline,
              color: Colors.grey,
            ),
            title: Container(height: 0),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.search, color: Colors.white),
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            title: Container(height: 0),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(MdiIcons.plusBox, color: Colors.white),
            icon: Icon(
              MdiIcons.plusBox,
              color: Colors.grey,
            ),
            title: Container(height: 0),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(MdiIcons.heart, color: Colors.white),
            icon: Icon(
              MdiIcons.heart,
              color: Colors.grey,
            ),
            title: Container(height: 0),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(MdiIcons.account, color: Colors.white),
            icon: Icon(
              MdiIcons.account,
              color: Colors.grey,
            ),
            title: Container(height: 0),
          ),
        ],
      ),
    );
  }



  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }
}
