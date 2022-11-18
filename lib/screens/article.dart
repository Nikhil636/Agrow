import 'package:agrow/reusable/reusable.dart';
import 'package:agrow/screens/Drawer.dart';
import 'package:agrow/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/link.dart';

class Article extends StatefulWidget {
  const Article({Key? key}) : super(key: key);

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  List<ListItem> bloglist = [
    ListItem(
        "https://www.agrifarming.in/wp-content/uploads/2022/09/Agriculture-Subsidy2.jpg",
        "A guide to understanding agriculture farming subsidy in India "),
    ListItem(
        "https://www.agrifarming.in/wp-content/uploads/2022/09/Exotic-Vegetable-Farming2-1024x768.jpg",
        "Exotic vegetable farming in india check how this growing guide helps beginners"),
    ListItem(
        "https://www.agrifarming.in/wp-content/uploads/2022/09/Buy-Plant-Seeds-Online4-1024x768.jpg",
        "Best place to buy plant seeds online in india for vegetables flowers fruits herbs and hybrid seeds"),
    ListItem(
        "https://www.agrifarming.in/wp-content/uploads/2022/09/Understanding-Agriculture2-1024x680.jpg",
        "A guide to understanding agriculture farming types and examples for beginners"),
    ListItem(
        "https://www.agrifarming.in/wp-content/uploads/2022/09/Understanding-Irrigation-Management2-1024x681.jpg",
        "A guide to understanding irrigation management check how this helps farmers"),
    ListItem(
        "https://www.agrifarming.in/wp-content/uploads/2022/09/How-to-Start-Exotic-Fruit-Farming-in-India-11.jpg",
        "How to start exotic fruit farming in india a production and growing guide for beginners")
  ];
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
          article(bloglist[0]),
          Link(
              target: LinkTarget.self,
              uri: Uri.parse(
                  'https://www.agrifarming.in/a-guide-to-understanding-agriculture-farming-subsidy-in-india'),
              builder: (context, followLink) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: hexStringToColor("007542"),
                    //onPrimary: Colors.black,
                  ),
                  onPressed: followLink,
                  child: Text(
                    "Read This article",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 15),
                  ))),
          Divider(),
          article(bloglist[1]),
          Link(
              target: LinkTarget.self,
              uri: Uri.parse(
                  'https://www.agrifarming.in/exotic-vegetable-farming-in-india-check-how-this-growing-guide-helps-beginners'),
              builder: (context, followLink) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: hexStringToColor("007542"),
                    //onPrimary: Colors.black,
                  ),
                  onPressed: followLink,
                  child: Text(
                    "Read This article",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 15),
                  ))),
          Divider(),
          article(bloglist[2]),
          Link(
              target: LinkTarget.self,
              uri: Uri.parse(
                  'https://www.agrifarming.in/best-place-to-buy-plant-seeds-online-in-india-for-vegetables-flowers-fruits-herbs-and-hybrid-seeds'),
              builder: (context, followLink) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: hexStringToColor("007542"),
                    //onPrimary: Colors.black,
                  ),
                  onPressed: followLink,
                  child: Text(
                    "Read This article",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 15),
                  ))),
          Divider(),
          article(bloglist[3]),
          Link(
              target: LinkTarget.self,
              uri: Uri.parse(
                  'https://www.agrifarming.in/a-guide-to-understanding-agriculture-farming-types-and-examples-for-beginners'),
              builder: (context, followLink) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: hexStringToColor("007542"),
                    //onPrimary: Colors.black,
                  ),
                  onPressed: followLink,
                  child: Text(
                    "Read This article",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 15),
                  ))),
          Divider(),
          article(bloglist[4]),
          Link(
              target: LinkTarget.self,
              uri: Uri.parse(
                  'https://www.agrifarming.in/a-guide-to-understanding-irrigation-management-check-how-this-helps-farmers'),
              builder: (context, followLink) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: hexStringToColor("007542"),
                    //onPrimary: Colors.black,
                  ),
                  onPressed: followLink,
                  child: Text(
                    "Read This article",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 15),
                  ))),
          Divider(),
          article(bloglist[5]),
          Link(
              target: LinkTarget.self,
              uri: Uri.parse(
                  'https://www.agrifarming.in/how-to-start-exotic-fruit-farming-in-india-a-production-and-growing-guide-for-beginners'),
              builder: (context, followLink) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: hexStringToColor("007542"),
                    //onPrimary: Colors.black,
                  ),
                  onPressed: followLink,
                  child: Text(
                    "Read This article",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 15),
                  ))),
        ],
      ),
    );
  }
}
