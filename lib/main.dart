import 'package:flutter/material.dart';
import 'package:vokasi_app/login.dart';
import 'package:vokasi_app/profile_screen.dart';
import 'package:vokasi_app/splash_screen.dart';
import 'package:vokasi_app/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: PageLogin(),
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
    );
  }
}
