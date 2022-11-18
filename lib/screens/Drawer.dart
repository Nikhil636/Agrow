import 'dart:io';

import 'package:agrow/screens/Home.dart';
import 'package:agrow/screens/shop.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

import '../utils/Color.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Nikhil",
                style: TextStyle(
                    fontFamily: "Aboreto",
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            accountEmail: Text("Nikhil@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: Image.asset(
                "assets/images/drawer.png",
                width: 110,
                height: 110,
                fit: BoxFit.fill,
              )),
            ),
            decoration: BoxDecoration(
              color: hexStringToColor("007542"),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
          ),
          // ListTile(
          //   leading: Icon(Icons.shop),
          //   title: Text("Shop"),
          //   iconColor: hexStringToColor("007542"),
          //   onTap: (() {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => shop()));
          //   }),
          // ),
          ListTile(
            leading: Icon(Icons.shopping_cart_checkout_sharp),
            title: Text("My Cart"),
            iconColor: hexStringToColor("007542"),
            onTap: (() {}),
          ),
          ListTile(
            leading: Icon(Icons.wallet),
            iconColor: hexStringToColor("007542"),
            title: Text(
              "Wallet",
            ),
            onTap: (() {}),
          ),
          Divider(
            color: hexStringToColor("007542"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            iconColor: hexStringToColor("007542"),
            title: Text("About us"),
            onTap: (() {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => premium()));
            }),
          ),
          ListTile(
            leading: Icon(Icons.share),
            iconColor: hexStringToColor("007542"),
            title: Text("Share"),
            onTap: (() {
              Share.share(
                  "https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
            }),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            iconColor: hexStringToColor("007542"),
            title: Text("Settings"),
            onTap: (() {}),
          ),
          ListTile(
            leading: Icon(Icons.description),
            iconColor: hexStringToColor("007542"),
            title: Text("Policies"),
            onTap: (() {
              openFile(
                  url:
                      "https://s21.q4cdn.com/798735247/files/doc_downloads/corporate_governance/Code-of-Conduct-Policy.pdf",
                  name: "Policies.pdf");
            }),
          ),
          Divider(
            color: hexStringToColor("007542"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            iconColor: hexStringToColor("007542"),
            title: Text("Logout"),
            onTap: (() {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => signin()));
            }),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            iconColor: hexStringToColor("007542"),
            title: Text("Exit"),
            onTap: (() {
              exit(0);
            }),
          ),
        ],
      ),
    );
  }
}
