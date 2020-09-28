import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/main/main.screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(
        seconds: 6,
      ),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => MainScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: FlareActor(
            'assets/animations/food.flr',
            animation: 'Untitled',
          ),
        ),
      ),
    );
  }
}
