import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_delivery/pages/profile_page/controller/profile.controller.dart';
import 'package:food_delivery/pages/profile_page/widgets/googleSignInButton.widget.dart';
import 'package:food_delivery/pages/profile_page/widgets/profileInfo.widget.dart';
import 'package:get_it/get_it.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool turnOnNotification = false;
  bool turnOnLocation = false;

  final controller = GetIt.I.get<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: controller.isUserSignedIn
                  ? ProfileInfo()
                  : Center(
                      child: GoogleSignInButton(),
                    ),
            ),
          ),
        );
      },
    );
  }
}
