import 'package:attendance_app/configs/singleton/size_screen.dart';
import 'package:attendance_app/configs/values/colors.dart';
import 'package:attendance_app/router/route_name.dart';
import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sc=  SizeScreen.getInstance(context);

    return SizedBox(
      height: sc.height/12,
      width: double.infinity,
      child: RaisedButton(
        color: secondary,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)),
        onPressed: (){
          Navigator.pushNamed(context, RouteName.home);
        },
        child: Text("LOGIN",
            style: Theme
                .of(context)
                .primaryTextTheme
                .button),
      )
    );
  }
}
