import 'package:cs_tech/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            image: AssetImage('assets/splash.jpg'),
            fit: BoxFit.cover,
          ),
          Center(
            child: SpinKitCircle(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
