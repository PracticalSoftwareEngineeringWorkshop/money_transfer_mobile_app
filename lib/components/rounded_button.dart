import 'package:flutter/material.dart';
import 'package:money_transfer_mobile_app/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color, textColor;

  const RoundedButton(
      {Key key,
      this.text,
      this.onPressed,
      this.color = Constants.kPrimaryColor,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
