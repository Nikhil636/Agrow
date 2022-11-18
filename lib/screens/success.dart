import 'dart:ffi';

import 'package:agrow/screens/Home.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';

class success extends StatefulWidget {
  const success({Key? key}) : super(key: key);

  @override
  State<success> createState() => _successState();
}

class _successState extends State<success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/images/success.gif"),
                        height: 150,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Successfull",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Your payment was done successfully",
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                          width: 330,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => home())));
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: hexStringToColor("007542"),
                                  side: BorderSide(width: 100),
                                  elevation: 6),
                              child: Text(
                                "OK",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ))),
                    ])
              ],
            )));
  }
}
