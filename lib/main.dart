import 'package:flutter/material.dart';
import 'package:money_transfer_mobile_app/Screens/RegisterScreen/register_screen.dart';
import 'package:money_transfer_mobile_app/utils/constants.dart';
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

  final Widget splashScreen = SplashScreenView(
    home: RegisterScreen(),
    duration: 3000,
    imageSize: 100,
    imageSrc: "images/logo.png",
    text: "Money Transfer",
    textType: TextType.TyperAnimatedText,
    textStyle: TextStyle(
      fontSize: 30.0,
      color: Constants.kPrimaryColor
    ),
    backgroundColor: Colors.white,
  );
}
