import 'package:flutter/material.dart';
import 'package:money_transfer_mobile_app/Screens/LoginScreen/login_screen.dart';
import 'package:money_transfer_mobile_app/view_account.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money Transfer',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: splashScreen,
    );
  }

  Widget splashScreen = SplashScreenView(
    home: LoginScreen(),
    duration: 3000,
    imageSize: 100,
    imageSrc: "images/logo.png",
    text: "Money Transfer",
    textType: TextType.TyperAnimatedText,
    textStyle: TextStyle(
      fontSize: 30.0,
    ),
    backgroundColor: Colors.white,
  );
}
