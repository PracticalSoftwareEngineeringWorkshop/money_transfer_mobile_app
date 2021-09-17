import 'package:flutter/material.dart';
import 'package:money_transfer_mobile_app/api/get_account_by_id.dart';
import 'package:money_transfer_mobile_app/domains/account.dart';
import 'package:money_transfer_mobile_app/screens/RegisterScreen/register_screen.dart';
import 'package:money_transfer_mobile_app/components/rounded_button.dart';

class ViewProfileScreen extends StatefulWidget {
  @override
  _ViewProfileScreenState createState() => _ViewProfileScreenState();
}

class _ViewProfileScreenState extends State<ViewProfileScreen> {

  Account? accountById;

  Future apiCall() async {
    var response = await getAccountById(2);

    setState(() {
      accountById = response;
    });
  }

  /*
  var id, fullName, phoneNumber, email, balance;

  // asynchronous API call
  Future apiCall() async {

    final Account accountById = await getAccountById(1);

    setState(() {
      id = accountById.id;
      fullName = '$accountById.firstName $accountById.lastName';
      phoneNumber = accountById.phoneNumber;
      email = accountById.email;
      balance = accountById.balance;
    });
  }
  */

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
      body: accountById == null
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
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Full Name: ${accountById?.firstName} ${accountById?.lastName}',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Phone Number: ${accountById?.phoneNumber}',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Email: ${accountById?.email}',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Balance: ${accountById?.balance}',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
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
