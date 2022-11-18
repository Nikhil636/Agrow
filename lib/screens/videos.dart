import 'package:agrow/screens/Drawer.dart';
import 'package:agrow/utils/Color.dart';
import 'package:agrow/videoplayer/vd1.dart';
import 'package:agrow/videoplayer/vd2.dart';
import 'package:agrow/videoplayer/vd3.dart';
import 'package:agrow/videoplayer/vd4.dart';
import 'package:agrow/videoplayer/vd5.dart';
import 'package:flutter/material.dart';

class vdisplay extends StatefulWidget {
  const vdisplay({Key? key}) : super(key: key);

  @override
  State<vdisplay> createState() => _vdisplayState();
}

class _vdisplayState extends State<vdisplay> {
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
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          GestureDetector(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Image(
                image: AssetImage("assets/images/1.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            onTap: () {
              Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => vd1(),
                  ));
            },
          ),
          Divider(
            height: 20,
          ),
          GestureDetector(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Image(
                image: AssetImage("assets/images/2.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            onTap: () {
              Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => vd2(),
                  ));
            },
          ),
          Divider(
            height: 20,
          ),
          GestureDetector(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Image(
                image: AssetImage("assets/images/3.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            onTap: () {
              Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => vd3(),
                  ));
            },
          ),
          Divider(
            height: 20,
          ),
          GestureDetector(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Image(
                image: AssetImage("assets/images/4.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            onTap: () {
              Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => vd4(),
                  ));
            },
          ),
          Divider(
            height: 20,
          ),
          GestureDetector(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 250,
              child: Image(
                image: AssetImage("assets/images/5.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            onTap: () {
              Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => vd5(),
                  ));
            },
          )
        ],
      ),
    );
  }
}
