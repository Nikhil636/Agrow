import 'package:agrow/screens/success.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  int value = 0;
  final paymentmode = ['Credit card', 'Debit card', 'PayTM/GPay', 'Wallet'];
  final paymenticon = [
    Icons.credit_card,
    Icons.credit_card,
    Icons.payment,
    Icons.account_balance_wallet
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: hexStringToColor("8AAAE5"),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          title: Text("Payment",
              style: TextStyle(fontSize: 25, color: Colors.black)),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "Enter your Payment Method",
              style:
                  TextStyle(fontFamily: "Aboreto", fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.separated(
              itemCount: paymentmode.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Radio(
                      activeColor: hexStringToColor("8AAAE5"),
                      value: index,
                      groupValue: value,
                      onChanged: (i) => setState(() => value = index)),
                  title: Text(
                    paymentmode[index],
                    style: TextStyle(),
                  ),
                  trailing: Icon(paymenticon[index], color: Colors.black),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            )),
            SizedBox(
                width: 330,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => success())));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: hexStringToColor("8AAAE5"),
                        side: BorderSide(width: 100),
                        elevation: 6),
                    child: Text(
                      "PAY",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ))),
            SizedBox(
              height: 25,
            )
          ],
        ));
  }
}
