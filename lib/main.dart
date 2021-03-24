import 'package:flutter/material.dart';
import 'package:money_transfer_mobile_app/view_account.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Transfer',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ViewAccount(),
    );
  }
}