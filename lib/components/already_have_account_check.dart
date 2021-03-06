import 'package:flutter/material.dart';
import 'package:money_transfer_mobile_app/utils/constants.dart';

class AlreadyHaveAccountCheck extends StatelessWidget {
  final bool isLoggedIn;
  final Function()? onPressed;  //https://stackoverflow.com/questions/64484113/the-argument-type-function-cant-be-assigned-to-the-parameter-type-void-funct

  const AlreadyHaveAccountCheck({
    Key? key,
    this.isLoggedIn = true,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isLoggedIn ? "Don't have an Account? " : "Already have an Account? ",
          style: TextStyle(color: Constants.kPrimaryColor),
        ),
        GestureDetector(
            onTap: onPressed,
            child: Text(
              isLoggedIn ? "Sign Up" : "Sign In",
              style: TextStyle(
                  color: Constants.kPrimaryColor, fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
