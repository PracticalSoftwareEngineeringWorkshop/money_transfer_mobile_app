import 'package:flutter/material.dart';
import 'package:money_transfer_mobile_app/components/text_field_container.dart';
import 'package:money_transfer_mobile_app/utils/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key, this.hintText, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: TextInputType.number,
        obscureText: true,
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(
              Icons.lock,
              color: Constants.kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: Constants.kPrimaryColor,
            ),
            border: InputBorder.none),
        onChanged: onChanged,
      ),
    );
  }
}