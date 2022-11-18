import 'package:agrow/screens/Home.dart';
import 'package:agrow/utils/color.dart';
import 'package:flutter/material.dart';

class cartitem {
  String imgurl;
  cartitem(
    this.imgurl,
  );
}

class Img {
  String imgurl;
  Img(this.imgurl);
}

class ListItem {
  String imgurl;
  String title;
  ListItem(this.imgurl, this.title);
}

class News {
  String imgurl;
  String title;
  String date;
  News(this.imgurl, this.title, this.date);
}

class schemes {
  String title;
  String link;

  schemes(this.title, this.link);
}

class video {
  String Link;
  video(this.Link);
}

Widget videocard(Img vd) {
  return Container(
      width: double.infinity,
      height: 70.0,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 8.0),
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(vd.imgurl),
                    fit: BoxFit.cover,
                  )),
            )
          ]));
}

Widget Articlewidget(ListItem blog) {
  return Container(
      width: double.infinity,
      height: 70.0,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 8.0),
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(blog.imgurl),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    blog.title,
                    style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500),
                  ),
                ]))
          ]));
}

Widget Newswidget(News news) {
  return Container(
      width: double.infinity,
      height: 70.0,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 8.0),
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(news.imgurl),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    news.title,
                    style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    news.date,
                    style: TextStyle(
                        fontSize: 10.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400),
                  )
                ]))
          ]));
}

Widget Newsw(News news) {
  return Container(
      width: double.infinity,
      height: 110.0,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 8.0),
              height: 110.0,
              width: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(news.imgurl),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    news.title,
                    style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    news.date,
                    style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400),
                  )
                ]))
          ]));
}

Widget Schemes(schemes schms) {
  return Container(
    width: double.infinity,
    height: 50.0,
    child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 180,
              child: Text(
                schms.title,
                style: TextStyle(
                    fontSize: 13.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600),
              )),
          SizedBox(
            width: 40,
          ),
          SizedBox(
              height: 25,
              child: ElevatedButton(
                  onPressed: () {
                    openFile(url: schms.link, name: schms.title);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: hexStringToColor("007542")),
                  child: Text(
                    "Download",
                    style: TextStyle(fontSize: 13),
                  )))
        ]),
  );
}

Widget VC(Img vcimg) {
  return Container(
    margin: EdgeInsets.only(right: 12.0),
    width: 122.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 250,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                  image: AssetImage(vcimg.imgurl), fit: BoxFit.cover)),
        )
      ],
    ),
  );
}

Widget article(ListItem blog) {
  return Container(
      width: double.infinity,
      height: 90.0,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 8.0),
              height: 90.0,
              width: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(blog.imgurl),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    blog.title,
                    style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500),
                  ),
                ]))
          ]));
}

Widget shopcard(cartitem cart) {
  return Container(
    margin: EdgeInsets.only(right: 12.0),
    width: 122.0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 250,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                  image: AssetImage(cart.imgurl), fit: BoxFit.contain)),
        )
      ],
    ),
  );
  // return Container(
  //   width: double.infinity,
  //   height: 70.0,
  //   child: Column(
  //     children: [
  //       Container(
  //         // margin: EdgeInsets.only(right: 8.0),
  //         // height: 110.0,
  //         // width: 100.0,
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(8.0),
  //             image: DecorationImage(
  //               image: NetworkImage(cart.jpg),
  //               fit: BoxFit.fill,
  //             )),
  //       ),
  //       Text(
  //         cart.name,
  //       )
  //     ],
  //   ),
  // );
}
