import 'package:agrow/screens/payment.dart';
import 'package:agrow/utils/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
      backgroundColor: hexStringToColor("007542"),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      padding: EdgeInsets.only(
                        top: size.height * 0.12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Product Description",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height: 150,
                                      child: Text(
                                        "Exposed termites transfer toxicant to nest mates not directly exposed to soil, causing indirect mortality.Premise does not kill termites immediately on contact and allows more termites to be exposed to treated soil thus giving a better control.Non-repellent insecticide which does not allow the termites to detect the gaps in the barrier formed due to improper application",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100,
                                    ),
                                    SizedBox(
                                        width: 320,
                                        height: 50,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          payment())));
                                            },
                                            style: ElevatedButton.styleFrom(
                                                primary:
                                                    hexStringToColor("007542"),
                                                side: BorderSide(width: 100),
                                                elevation: 6),
                                            child: Text(
                                              "BUY NOW",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20),
                                            )))
                                  ],
                                )
                              ],
                            )
                          ])),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Bayer Premise ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "₹269/-",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Aboreto"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Image.asset(
                              "assets/images/ps3.png",
                              fit: BoxFit.scaleDown,
                            ))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
