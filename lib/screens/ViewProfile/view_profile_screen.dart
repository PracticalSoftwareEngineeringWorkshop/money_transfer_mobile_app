import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:money_transfer_mobile_app/screens/RegisterScreen/register_screen.dart';
import 'package:money_transfer_mobile_app/utils/constants.dart';
import 'package:money_transfer_mobile_app/components/rounded_button.dart';

class ViewProfileScreen extends StatefulWidget {
  @override
  _ViewProfileScreenState createState() => _ViewProfileScreenState();
}

class _ViewProfileScreenState extends State<ViewProfileScreen> {
  static const String VIEW_ACCOUNT_ENDPOINT = '/api/account/1';

  var id, fullName, phoneNumber, email, balance;

  // asynchronous API call
  Future apiCall() async {
    var url = Uri.https(Constants.API_URL, VIEW_ACCOUNT_ENDPOINT);
    var response = await http.get(url);
    var jsonResponse = convert.jsonDecode(response.body);

    setState(() {
      id = jsonResponse['id'];
      fullName = jsonResponse['firstName'] + " " + jsonResponse['lastName'];
      phoneNumber = jsonResponse['phoneNumber'];
      email = jsonResponse['email'];
      balance = jsonResponse['balance'];
    });

    // logs the value on the console
    print(jsonResponse);
  }

  @override
  void initState() {
    super.initState();

    // call the API whenever the screen loads
    apiCall();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: fullName == null
          ? Center(child: CircularProgressIndicator())
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SHOW ACCOUNT",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      'Full Name: $fullName',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      'Phone Number: $phoneNumber',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      'Email: $email',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      'Balance: $balance',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    RoundedButton(
                      text: "Back to Register",
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return RegisterScreen();
                        }));
                      },
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
