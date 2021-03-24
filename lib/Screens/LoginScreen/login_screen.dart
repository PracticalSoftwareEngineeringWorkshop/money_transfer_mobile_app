import 'package:flutter/material.dart';
import 'package:money_transfer_mobile_app/Screens/LoginScreen/components/already_have_account_check.dart';
import 'package:money_transfer_mobile_app/Screens/LoginScreen/components/forgot_password.dart';
import 'package:money_transfer_mobile_app/Screens/LoginScreen/components/rounded_input_text.dart';
import 'package:money_transfer_mobile_app/Screens/LoginScreen/components/rounded_password_field.dart';
import 'package:money_transfer_mobile_app/Screens/RegisterScreen/register_screen.dart';
import 'package:money_transfer_mobile_app/components/rounded_button.dart';
import 'package:money_transfer_mobile_app/view_account.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedInputField(
            hintText: "Phone number",
            icon: Icons.phone,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: "Pin",
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Login",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ViewAccount();
              }));
            },
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          AlreadyHaveAccountCheck(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RegisterScreen();
              }));
            },
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          ForgotPassword()
        ],
      ),
    );
  }
}
