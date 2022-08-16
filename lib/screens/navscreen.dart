import 'package:flutter/material.dart';
import 'package:test_caurosal/screens/homepage.dart';
import 'package:test_caurosal/screens/homescreen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;

  final _screen = [
    MyWidget(),
    const Scaffold(
        body: Center(
          child: Text(
            'ใหม่และมาแรง',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black),
    const Scaffold(
        body: Center(
          child: Text(
            'ค้นหา',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black),
    const Scaffold(
        body: Center(
          child: Text(
            'เนื้อหาดาวน์โหลด',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black)
  ];
  @override
  Widget build(BuildContext context) {
    print(_selectedIndex);
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: bottom(),
        body: Stack(
          children: _screen
              .asMap()
              .map((i, screen) => MapEntry(
                  i,
                  Offstage(
                    offstage: _selectedIndex != i,
                    child: screen,
                  )))
              .values
              .toList(),
        ));
  }

  Widget bottom() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (i) => setState(() {
        _selectedIndex = i;
      }),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'หน้าหลัก'),
        BottomNavigationBarItem(
            icon: Icon(Icons.local_play_outlined), label: 'ใหม่และมาแรง'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined), label: 'ค้นหา'),
        BottomNavigationBarItem(
            icon: Icon(Icons.download), label: 'เนื้อหาดาวน์โหลด'),
      ],
      unselectedItemColor: Colors.grey,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
    );
  }
}
