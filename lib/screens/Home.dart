import 'dart:io';

import 'package:agrow/reusable/reusable.dart';
import 'package:agrow/screens/Drawer.dart';
import 'package:agrow/screens/News.dart';
import 'package:agrow/screens/article.dart';
import 'package:agrow/screens/shop.dart';
import 'package:agrow/screens/splash.dart';
import 'package:agrow/screens/videos.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import '../utils/Color.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  PageController controller = PageController();
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
        "https://img.krishijagran.com/media/40797/pm-kisan.png",
        "Kharif Crop Procurement to Start in Haryana from October 1",
        "21 September, 2022 8:53 AM IST"),
    News(
        "https://img.krishijagran.com/media/78143/qwfe.jpg",
        "Lumpy Skin Disease Kills 67,000 Cattle; Netizens Urge Govt to Speed Up the Vaccination Process",
        "21 September, 2022 8:53 AM IST")
  ];
  List<schemes> schemelist = [
    schemes("Agriculture Infrastructure Fund",
        "https://agricoop.nic.in/sites/default/files/FINALSchemeGuidelinesAIF%20%282%29.pdf "),
    schemes("ATMA",
        "https://agricoop.nic.in/sites/default/files/ATMA-Guidelines%202018.pdf"),
    schemes("AGMARKNET",
        "https://agricoop.nic.in/sites/default/files/Agmarknet_Guidelines.pdf"),
    schemes("Horticulture",
        "https://agricoop.nic.in/sites/default/files/midh_Guidelines.pdf"),
    schemes("Online Pesticide Registration",
        "https://agricoop.nic.in/sites/default/files/Pesticides_Registration.pdf"),
    schemes("Plant Quarantine Clearance",
        "https://agricoop.nic.in/sites/default/files/Quarantine_Guidelinespdf.pdf")
  ];
  List<Img> imglist = [
    Img("assets/images/cart 1.png"),
    Img("assets/images/cart 2.png"),
    Img("assets/images/cart3.png"),
    Img("assets/images/cart 4.png"),
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
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Videos",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 150.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector(
                              child: VC(imglist[0]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => vdisplay(),
                                    ));
                              },
                            ),
                            GestureDetector(
                              child: VC(imglist[1]),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => vdisplay(),
                                    ));
                              },
                            ),
                            GestureDetector(
                                child: VC(imglist[0]),
                                onTap: () {
                                  Navigator.push<Widget>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => vdisplay(),
                                      ));
                                }),
                            GestureDetector(
                                child: VC(imglist[1]),
                                onTap: () {
                                  Navigator.push<Widget>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => vdisplay(),
                                      ));
                                }),
                            GestureDetector(
                                child: VC(imglist[0]),
                                onTap: () {
                                  Navigator.push<Widget>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => vdisplay(),
                                      ));
                                }),
                            GestureDetector(
                                child: VC(imglist[1]),
                                onTap: () {
                                  Navigator.push<Widget>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => vdisplay(),
                                      ));
                                }),
                          ],
                        ),
                      )

                      // GestureDetector(
                      //   child: CarouselSlider(
                      //       items: [
                      //         Image.asset(
                      //           "assets/images/t1.png",
                      //           fit: BoxFit.fill,
                      //         ),
                      //         Image.asset("assets/images/t2.png",
                      //             fit: BoxFit.fill),
                      //         Image.asset("assets/images/t3.png",
                      //             fit: BoxFit.fill),
                      //         Image.asset(
                      //           "assets/images/t4.png",
                      //           fit: BoxFit.fill,
                      //         ),
                      //       ],
                      //       options: CarouselOptions(
                      //         autoPlay: true,
                      //         aspectRatio: 1.8,
                      //         enlargeCenterPage: false,
                      //       )),
                      //   onTap: () {
                      //     Navigator.push<Widget>(
                      //         context,
                      //         MaterialPageRoute(
                      //           builder: (context) => vdisplay(),
                      //         ));
                      //   },
                      // )
                      ,

                      Divider(
                        thickness: 2,
                        color: hexStringToColor("007542"),
                        height: 30,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //BLOGS
                      //BLOGS
                      //BLOGS
                      //BLOGS
                      //BLOGS
                      Text(
                        "Blogs",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                            fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                          width: double.infinity,
                          height: 600.0,
                          child: ListView(children: [
                            Articlewidget(bloglist[0]),
                            Articlewidget(bloglist[1]),

                            // GestureDetector(
                            //   child: Articlewidget(bloglist[0]),
                            //   onTap: (() {
                            //     Navigator.push<Widget>(
                            //         context,
                            //         MaterialPageRoute(
                            //           builder: (context) => splash(),
                            //         ));
                            //   }),
                            // ),
                            // Divider(),
                            // GestureDetector(
                            //   child: Articlewidget(bloglist[1]),
                            //   onTap: (() {
                            //     Navigator.push<Widget>(
                            //         context,
                            //         MaterialPageRoute(
                            //           builder: (context) => splash(),
                            //         ));
                            //   }),
                            // ),

                            GestureDetector(
                              child: Center(
                                child: Text(
                                  "View more",
                                  style: TextStyle(
                                      color: hexStringToColor("007542"),
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              onTap: () {
                                Navigator.push<Widget>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Article(),
                                    ));
                              },
                            ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                            Divider(
                              thickness: 2,
                              color: hexStringToColor("007542"),
                              height: 30,
                            ),
                            //NEWS
                            //NEWS
                            //NEWS
                            //NEWS
                            //NEWS
                            Text(
                              "News",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              height: 600.0,
                              child: ListView(children: [
                                Newswidget(newslist[0]),
                                Newswidget(newslist[1]),
                                SizedBox(
                                  height: 20,
                                ),
                                // GestureDetector(
                                //   child: Newswidget(newslist[0]),
                                //   onTap: (() {
                                //     Navigator.push<Widget>(
                                //         context,
                                //         MaterialPageRoute(
                                //           builder: (context) => splash(),
                                //         ));
                                //   }),
                                // ),
                                // Divider(),
                                // GestureDetector(
                                //   child: Newswidget(newslist[1]),
                                //   onTap: (() {
                                //     Navigator.push<Widget>(
                                //         context,
                                //         MaterialPageRoute(
                                //           builder: (context) => splash(),
                                //         ));
                                //   }),
                                // ),
                                GestureDetector(
                                  child: Center(
                                    child: Text(
                                      "View more",
                                      style: TextStyle(
                                          color: hexStringToColor("007542"),
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push<Widget>(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => newss(),
                                        ));
                                  },
                                ),
                                //Schemes
                                //Schemes
                                //Schemes
                                //Schemes
                                //Schemes
                                // SizedBox(
                                //   height: 20,
                                // ),
                                Divider(
                                  thickness: 2,
                                  color: hexStringToColor("007542"),
                                  height: 30,
                                ),
                                Text(
                                  "Schemes",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    width: double.infinity,
                                    height: 600.0,
                                    child: ListView(
                                      children: [
                                        Schemes(schemelist[0]),
                                        Divider(),
                                        Schemes(schemelist[1]),
                                        Divider(),
                                        Schemes(schemelist[2]),
                                        Divider(),
                                        Schemes(schemelist[3]),
                                        Divider(),
                                        Schemes(schemelist[4]),
                                        Divider(),
                                        Schemes(schemelist[5]),
                                      ],
                                    ))
                              ]),
                            ),
                          ])),
                    ]),
              )),
        ],
      ),
    );
  }
}

Future openfile({required String url, String? filename}) async {
  await downloadFile(url, filename!);
}

Future openFile({required String url, String? name}) async {
  final file = await downloadFile(url, name!);
  if (file == null) return;
  print('path:${file.path}');
  OpenFile.open(file.path);
}

Future<File?> downloadFile(String url, String name) async {
  final appStorage = await getApplicationSupportDirectory();
  final file = File('${appStorage.path}/$name');
  try {
    final response = await Dio().get(url,
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            receiveTimeout: 0));
    final raf = file.openSync(mode: FileMode.write);
    raf.writeFromSync(response.data);
    await raf.close();
    return file;
  } catch (e) {
    return null;
  }
}
