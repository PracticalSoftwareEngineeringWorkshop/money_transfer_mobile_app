import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:money_transfer_mobile_app/utils/constants.dart';

class ViewProfileScreen extends StatefulWidget {
  @override
  _ViewProfileScreenState createState() => _ViewProfileScreenState();
}

class _ViewProfileScreenState extends State<ViewProfileScreen> {

  static const String VIEW_ACCOUNT_ENDPOINT = '/api/account/1';

  var fullName;

  // asynchronous API call
  Future apiCall() async {
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
