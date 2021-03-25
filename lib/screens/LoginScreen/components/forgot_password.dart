import 'package:flutter/material.dart';
import 'package:money_transfer_mobile_app/utils/constants.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: Text(
            "Forgot password?",
            style: TextStyle(color: Constants.kPrimaryColor),
          ),
        ),
      ],
    );
  }
}