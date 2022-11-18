import 'package:agrow/reusable/reusable.dart';
import 'package:agrow/screens/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/link.dart';

import '../utils/Color.dart';

class newss extends StatefulWidget {
  const newss({Key? key}) : super(key: key);

  @override
  State<newss> createState() => _newssState();
}

class _newssState extends State<newss> {
  List<News> newslist = [
    News(
        "https://img.krishijagran.com/media/78100/gi-tags-3456.jpg",
        "DPIIT to Promote Over 400 GI Products Through Multi-Media Campaigns",
        "21 September, 2022 8:51 AM IST"),
    News(
        "https://img.krishijagran.com/media/78101/t.png",
        "EKCC Update: Union Bank of India Announces Digitalization of Kisan Credit Card",
        "21 September, 2022 8:53 AM IST"),
    News(
        "https://img.krishijagran.com/media/78102/3.jpg",
        "'Loans up to 90% and subsidy available for agriculture drones!,' says Drone Federation of India",
        "21 September, 2022 8:53 AM IST"),
    News(
        "https://img.krishijagran.com/media/40797/pm-kisan.png",
        "PM Kisan Latest Update: 1 Lakh Farmers May Not Get 12th Installment",
        "21 September, 2022 8:53 AM IST"),
    News(
        "https://img.krishijagran.com/media/77968/kharif.jpg",
        "Kharif Crop Procurement to Start in Haryana from October 1",
        "21 September, 2022 8:53 AM IST"),
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
          Newsw(newslist[0]),
          Link(
              target: LinkTarget.self,
              uri: Uri.parse(
                  'https://krishijagran.com/agriculture-world/dpiit-to-promote-over-400-gi-products-through-multi-media-campaigns/'),
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
          Newsw(newslist[1]),
          Link(
              target: LinkTarget.self,
              uri: Uri.parse(
                  'https://krishijagran.com/agriculture-world/kcc-update-union-bank-of-india-announces-digitalization-of-kisan-credit-card/'),
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
          Newsw(newslist[2]),
          Link(
              target: LinkTarget.self,
              uri: Uri.parse(
                  'https://krishijagran.com/agriculture-world/pm-kisan-yojana-farmers-to-get-12th-installment-this-week-read-details/'),
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
          Newsw(newslist[3]),
          Link(
              target: LinkTarget.self,
              uri: Uri.parse(
                  'https://krishijagran.com/agriculture-world/pm-kisan-update-1-lakh-farmers-may-not-get-12th-installment-know-why/'),
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
          Newsw(newslist[4]),
          Link(
              target: LinkTarget.self,
              uri: Uri.parse(
                  'https://krishijagran.com/agriculture-world/kharif-crop-procurement-to-start-in-haryana-from-october-1/'),
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
