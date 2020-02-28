
import 'package:attendance_app/animations/delay_animation.dart';
import 'package:attendance_app/configs/values/colors.dart';
import 'package:flutter/material.dart';

class CurrentDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DelayedAnimation(
      offset: Offset(0, -0.35),
      delay: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text("THURSDAY", style: Theme.of(context).primaryTextTheme.subhead.copyWith(color: colorTextBlack),),
          Text("09/07/2020", style: Theme.of(context).primaryTextTheme.subhead.copyWith(color: colorTextBlack),)
        ],
      ),
    );
  }
}
