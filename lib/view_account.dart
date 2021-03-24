import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:money_transfer_mobile_app/constants.dart';

class ViewAccount extends StatefulWidget {
  @override
  _ViewAccountState createState() => _ViewAccountState();
}

class _ViewAccountState extends State<ViewAccount> {

  final String VIEW_ACCOUNT_ENDPOINT = '/api/account/1';

  var fullName;

  // asynchronous API call
  void apiCall() async {
    var url =
        Uri.https(Constants.API_URL, VIEW_ACCOUNT_ENDPOINT);
    var response = await http.get(url);
    var jsonResponse = convert.jsonDecode(response.body);

    setState(() {
      fullName = jsonResponse['firstName'] + " " + jsonResponse['lastName'];
    });

    // logs the value on the console
    print(fullName);
  }

  @override
  void initState() {
    super.initState();

    // call the API whenever the screen loads
    apiCall();
  }

  @override
  Widget build(BuildContext context) {
    if (fullName == null) {
      return Center(
        child: new CircularProgressIndicator(),
      );
    } else {
      return Text(fullName);
    }
  }
}
