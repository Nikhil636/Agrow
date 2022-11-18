import 'package:agrow/reusable/reusable.dart';
import 'package:agrow/screens/detail.dart';
import 'package:agrow/screens/splash.dart';
import 'package:agrow/screens/videos.dart';
import 'package:agrow/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

import 'Drawer.dart';

class shop extends StatefulWidget {
  const shop({Key? key}) : super(key: key);

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  List<cartitem> itemlist = [
    cartitem("assets/images/ps5.png"),
    cartitem("assets/images/ps2.png"),
    cartitem("assets/images/ps3.png"),
    cartitem("assets/images/ps4.png"),
    cartitem("assets/images/ft1.jpg"),
    cartitem("assets/images/ft2.jpg"),
    cartitem("assets/images/ft3.jpg"),
    cartitem("assets/images/ft4.jpg"),
  ];
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const drawer(),
        appBar: AppBar(
          elevation: 5,
          centerTitle: true,
          backgroundColor: hexStringToColor("007542"),
          title: Image.asset(
            "assets/images/appbar.png",
            // height: 200,
            width: 100,
            fit: BoxFit.fill,
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 50,
                        child: TextField(
                          cursorColor: Colors.black,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: hexStringToColor("007542"),
                            ),
                            labelText: "Search Item",
                            labelStyle:
                                TextStyle(color: Colors.black.withOpacity(0.4)),
                            filled: true,
                            fillColor: Colors.black.withOpacity(0.1),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: hexStringToColor("007542"))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Pesticides",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 150.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector(
                              child: shopcard(itemlist[3]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(),
                                    ));
                              },
                            ),
                            GestureDetector(
                              child: shopcard(itemlist[0]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(),
                                    ));
                              },
                            ),
                            GestureDetector(
                              child: shopcard(itemlist[2]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(),
                                    ));
                              },
                            ),
                            GestureDetector(
                              child: shopcard(itemlist[3]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(),
                                    ));
                              },
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: hexStringToColor("007542"),
                        height: 30,
                      ),
                      Text(
                        "Tools",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: double.infinity,
                        height: 150.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector(
                              child: shopcard(itemlist[4]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(),
                                    ));
                              },
                            ),
                            GestureDetector(
                              child: shopcard(itemlist[5]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(),
                                    ));
                              },
                            ),
                            GestureDetector(
                              child: shopcard(itemlist[6]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(),
                                    ));
                              },
                            ),
                            GestureDetector(
                              child: shopcard(itemlist[4]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(),
                                    ));
                              },
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: hexStringToColor("007542"),
                        height: 30,
                      ),
                      Text(
                        "Machines",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: double.infinity,
                        height: 150.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector(
                              child: shopcard(itemlist[4]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(),
                                    ));
                              },
                            ),
                            GestureDetector(
                              child: shopcard(itemlist[5]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(),
                                    ));
                              },
                            ),
                            GestureDetector(
                              child: shopcard(itemlist[6]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(),
                                    ));
                              },
                            ),
                            GestureDetector(
                              child: shopcard(itemlist[4]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail(),
                                    ));
                              },
                            ),
                          ],
                        ),
                      ),
                    ]))));
  }
}
