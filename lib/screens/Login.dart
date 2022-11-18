import 'package:agrow/screens/Home.dart';
import 'package:agrow/screens/navbar.dart';
import 'package:agrow/screens/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils/Color.dart';

enum LoginScreen { SHOW_MOBILE_ENTER_WIDGET, SHOW_OTP_FORM_WIDGET }

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController numController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  LoginScreen currentState = LoginScreen.SHOW_MOBILE_ENTER_WIDGET;
  FirebaseAuth auth = FirebaseAuth.instance;
  String verificationID = "";

  void SignOutME() async {
    await auth.signOut();
  }

  void signInWithPhoneAuthCred(AuthCredential phoneAuthCredential) async {
    try {
      final authCred = await auth.signInWithCredential(phoneAuthCredential);

      if (authCred.user != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => navbar()));
      }
    } on FirebaseAuthException catch (e) {
      print(e.message);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Some Error Occured. Try Again Later')));
    }
  }

  showMobilePhoneWidget(context) {
    return Scaffold(
        backgroundColor: hexStringToColor("e8efe7"),
        body: Column(children: [
          Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.5,
              height: 300,
              decoration: BoxDecoration(
                color: hexStringToColor("f6f9f5"),
                image: DecorationImage(
                    image: AssetImage("assets/images/loginbg1.png"),
                    fit: BoxFit.fitHeight),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              )),
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.name,
                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: hexStringToColor("007542"),
                    ),
                    labelText: "Enter Your Name",
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(color: hexStringToColor("007542"))),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: numController,
                  cursorColor: Colors.black,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                      color: hexStringToColor("007542"),
                    ),
                    labelText: "Enter Phone Number",
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                            BorderSide(color: hexStringToColor("007542"))),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 35,
              child: ElevatedButton(
                  onPressed: () async {
                    await auth.verifyPhoneNumber(
                        phoneNumber: "+91${numController.text}",
                        verificationCompleted: (phoneAuthCredential) async {},
                        verificationFailed: (verificationFailed) {
                          print(verificationFailed);
                        },
                        codeSent: (verificationID, resendingToken) async {
                          setState(() {
                            currentState = LoginScreen.SHOW_OTP_FORM_WIDGET;
                            this.verificationID = verificationID;
                          });
                        },
                        codeAutoRetrievalTimeout: (verificationID) async {});
                  },
                  style: ElevatedButton.styleFrom(
                      primary: hexStringToColor("007542")),
                  child: Text(
                    "Send",
                    style: TextStyle(fontSize: 15),
                  )))
        ]));
  }

  showOtpFormWidget(context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height * 0.5,
            height: 300,
            decoration: BoxDecoration(
              color: hexStringToColor("f6f9f5"),
              image: DecorationImage(
                  image: AssetImage("assets/images/loginbg1.png"),
                  fit: BoxFit.fitHeight),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            )),
        SizedBox(
          height: 30,
        ),
        Text(
          "VERIFY YOUR OTP",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 7,
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: otpController,
              cursorColor: Colors.black,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone,
                  color: hexStringToColor("007542"),
                ),
                labelText: "Enter Your Otp",
                labelStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: hexStringToColor("007542"))),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
                  verificationId: verificationID, smsCode: otpController.text);
              signInWithPhoneAuthCred(phoneAuthCredential);
            },
            style:
                ElevatedButton.styleFrom(primary: hexStringToColor("007542")),
            child: Text("Verify")),
        SizedBox(
          height: 16,
        ),
        Spacer()
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentState == LoginScreen.SHOW_MOBILE_ENTER_WIDGET
          ? showMobilePhoneWidget(context)
          : showOtpFormWidget(context),
    );
  }
}
