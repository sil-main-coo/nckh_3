import 'package:attendance_app/configs/singleton/size_screen.dart';
import 'package:attendance_app/configs/values/colors.dart';
import 'package:flutter/material.dart';

class HeaderBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height =  SizeScreen.getInstance(context).height;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
        ),
        color: secondary,
      ),
      height: height/2,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(height: height/8,),
          Text('SIGN IN', style: Theme.of(context).primaryTextTheme.headline.copyWith(),)
        ],
      ),
    );
  }
}
