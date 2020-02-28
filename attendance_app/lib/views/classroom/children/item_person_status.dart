import 'package:attendance_app/configs/values/colors.dart';
import 'package:attendance_app/router/route_name.dart';
import 'package:flutter/material.dart';

import 'header.dart';

class PersonStatusItem extends StatelessWidget {
  const PersonStatusItem({
    this.index,
    this.name,
    this.time,
    this.isAttended,
    this.code,
    this.color,
    this.nextColor,
  });

  final int index;
  final String name;
  final String code;
  final String time;
  final bool isAttended;
  final Color color;
  final Color nextColor;

  @override
  Widget build(BuildContext context) {
    return index == 0 ? HeaderClassroom() : _itemPerson(context);
  }

  Widget _itemPerson(BuildContext context) {
    return Container(
      color: nextColor,
      child: Container(
        decoration: BoxDecoration(
          color: isAttended ? borderBlack: borderWhite,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(100.0,),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 1.0),
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(100.0,),
              ),
            ),
            padding: const EdgeInsets.only(
              left: 32,
              top: 32.0,
              bottom: 32,
            ),
            child: ListTile(
              onTap: ()=> Navigator.pushNamed(context, RouteName.profile),
              leading: CircleAvatar(child: FlutterLogo(), backgroundColor: bgWhite,),
              title: Text(this.name, style: TextStyle(color: colorTextWhite),),
              subtitle: Text(this.code, style: TextStyle(color: colorTextWhite)),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  isAttended ? Icon(Icons.check, color: colorAttended,) : Icon(Icons.close, color: colorNoAttend,),
                  Visibility(visible: isAttended,child: Text(this.time, style: TextStyle(color: colorTextWhite)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}