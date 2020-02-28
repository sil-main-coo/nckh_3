import 'package:attendance_app/configs/singleton/size_screen.dart';
import 'package:attendance_app/views/login/children/header_box.dart';
import 'package:attendance_app/views/login/children/input_box.dart';
import 'package:flutter/material.dart';

import 'children/button_login.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final sc = SizeScreen.getInstance(context);

    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            HeaderBox(),
            Column(
              children: <Widget>[
                SizedBox(height: sc.height/3,),
                BoxInputLogin(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
