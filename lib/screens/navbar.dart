import 'package:agrow/screens/Home.dart';
import 'package:agrow/screens/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/Color.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  @override
  int currentIndex = 0;
  final screens = [home(), shop()];
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(color: Colors.white),
          unselectedLabelStyle: TextStyle(color: hexStringToColor("e8efe7")),
          backgroundColor: hexStringToColor("007542"),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                  // color: Colors.white,
                ),
                label: "Learn",
                backgroundColor: Colors.white,
                tooltip: "Learn"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop_2,
                  // color: Colors.white,
                ),
                label: "Shop",
                backgroundColor: Colors.white,
                tooltip: "Shop")
          ],
          currentIndex: currentIndex,
          onTap: ((index) => setState(
                () => (currentIndex = index),
              )),
          fixedColor: Colors.white,
        ));
  }
}
