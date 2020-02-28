import 'package:attendance_app/configs/singleton/size_screen.dart';
import 'package:flutter/material.dart';

import 'button_login.dart';

class BoxInputLogin extends StatefulWidget {
  @override
  _BoxInputLoginState createState() => _BoxInputLoginState();
}

class _BoxInputLoginState extends State<BoxInputLogin> {
  @override
  Widget build(BuildContext context) {
    final sc = SizeScreen.getInstance(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: sc.height/2.5,
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _tfEmail(),
                    SizedBox(height: sc.height/16,),
                    _tfPassword(),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: sc.height/14,),
          ButtonLogin()
        ],
      ),
    );
  }

  _tfEmail() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Email",
      ),
    );
  }

  _tfPassword() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Password",
      ),
    );
  }
}
