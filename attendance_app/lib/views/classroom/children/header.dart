import 'package:attendance_app/configs/singleton/size_screen.dart';
import 'package:attendance_app/configs/values/colors.dart';
import 'package:attendance_app/views/classroom/children/status_people.dart';
import 'package:attendance_app/views/home/children/current_date.dart';
import 'package:flutter/material.dart';

class HeaderClassroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sc = SizeScreen.getInstance(context);
    final heightBox = sc.height/2.8;
    final space = heightBox/6;

    return Container(
      color: secondary,
      child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: bgWhite,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
          ),
          height: heightBox,
          child: Column(
            children: <Widget>[
              CurrentDate(),
              SizedBox(height: space,),
              StatusPeople()
            ],
          )
      ),
    );
  }
}
