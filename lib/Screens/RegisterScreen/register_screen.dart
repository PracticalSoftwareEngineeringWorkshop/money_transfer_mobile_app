import 'package:flutter/material.dart';
import 'package:money_transfer_mobile_app/Screens/LoginScreen/components/already_have_account_check.dart';
import 'package:money_transfer_mobile_app/Screens/LoginScreen/components/rounded_input_text.dart';
import 'package:money_transfer_mobile_app/Screens/LoginScreen/components/rounded_password_field.dart';
import 'package:money_transfer_mobile_app/Screens/LoginScreen/login_screen.dart';
import 'package:money_transfer_mobile_app/components/rounded_button.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "CREATE ACCOUNT",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedInputField(
            hintText: "First name",
            icon: Icons.person_add,
            onChanged: (value) {},
          ),
          RoundedInputField(
            hintText: "Last name",
            icon: Icons.person_add,
            onChanged: (value) {},
          ),
          RoundedInputField(
            hintText: "Phone number",
            icon: Icons.phone,
            onChanged: (value) {},
          ),
          RoundedInputField(
            hintText: "Email",
            icon: Icons.email,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: "Pin",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: "Confirm Pin",
            onChanged: (value) {},
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedButton(
            text: "Register",
            onPressed: () {},
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          AlreadyHaveAccountCheck(
            isLoggedIn: false,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
