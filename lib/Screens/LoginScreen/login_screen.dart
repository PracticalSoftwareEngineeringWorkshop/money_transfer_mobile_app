import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text("LOGIN"),
        TextField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            hintText: 'Phone number',
            icon: Icon(
              Icons.phone,
              color: Colors.blue,
            ),
          ),
          onChanged: (value) {
            print(value);
          },
        ),
        TextField(
          keyboardType: TextInputType.number,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Pin',
            icon: Icon(
              Icons.lock,
              color: Colors.blue,
            ),
          ),
          onChanged: (value) {
            print(value);
          },
        ),
        ElevatedButton(onPressed: () {}, child: Text('Login')),
        ElevatedButton(onPressed: () {}, child: Text('Register'))
      ],
    ));
  }
}
