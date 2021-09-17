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
      title: Constants.APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: splashScreen,
    );
  }

  final Widget splashScreen = SplashScreenView(
    navigateRoute: RegisterScreen(),
    duration: 3000,
    imageSize: 100,
    imageSrc: Constants.ASSET_IMAGE_LOGO,
    text: Constants.APP_NAME,
    textType: TextType.TyperAnimatedText,
    textStyle: TextStyle(
      fontSize: 30.0,
      color: Constants.kPrimaryColor
    ),
    backgroundColor: Colors.white,
  );
}