import 'dart:convert';

import 'package:cs_tech/screens/home.dart';
import 'package:cs_tech/screens/otp_verification.dart';
import 'package:cs_tech/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _phoneNumberController = TextEditingController();

  Future<void> _handleLogin() async {
  print('Button pressed!');
  // Get phone number entered by the user
  String phoneNumber = _phoneNumberController.text;

  // API call to check existence and generate OTP
  var response = await http.post(
    Uri.parse('http://devapiv3.dealsdray.com/api/v2/user/otp'),
    body: {'mobileNumber': phoneNumber},
  );

  if (response.statusCode == 200) {
    var responseData = json.decode(response.body);
    bool userExists = responseData['user_exists'];
    if (userExists) {
      // Navigate to OTP verification screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OtpVerification()),
      );
    } else {
      // Navigate to signup screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignUp()),
      );
    }
  } 
    // Navigate to signup screen in case of API error
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUp()),
    );

}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(image: AssetImage('assets/login1.jpg')),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Glad to see you!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Please provide your phone number',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _phoneNumberController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                onPressed: () {
                  try {
                    _handleLogin();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  } catch (e) {
                    print('Error occurred: $e');
                  }
                },
                child: Text('Send code',
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
