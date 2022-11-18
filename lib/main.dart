import 'package:agrow/screens/Home.dart';
import 'package:agrow/screens/Login.dart';
import 'package:agrow/screens/detail.dart';
import 'package:agrow/screens/navbar.dart';
import 'package:agrow/screens/shop.dart';
import 'package:agrow/screens/splash.dart';
import 'package:agrow/screens/videos.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, home: splash(),
      //  home: const splash( )
    );
  }
}
