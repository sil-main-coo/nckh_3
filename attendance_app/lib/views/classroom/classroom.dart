import 'package:attendance_app/animations/delay_animation.dart';
import 'package:attendance_app/configs/values/colors.dart';
import 'package:flutter/material.dart';
import 'children/item_person_status.dart';

class ClassroomPage extends StatefulWidget {
  ClassroomPage({this.index});

  final int index;

  @override
  _ClassroomPageState createState() => _ClassroomPageState();
}

class _ClassroomPageState extends State<ClassroomPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgWhite,
        title: Text('Classroom 0${widget.index+1}', style: Theme
            .of(context)
            .primaryTextTheme
            .title,),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.details),
            onPressed: null,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.email),
        onPressed: (){},
      ),
      body: SafeArea(
        child: DelayedAnimation(
          delay: 300,
          offset: Offset(0, 0.35),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              PersonStatusItem(
                index: 0,
              ),
              PersonStatusItem(
                index: 1,
                name: "Alexio Morales",
                code: "CT020219",
                color: secondary,
                isAttended: true,
                nextColor: secondary,
                time: "09:30",
              ),
              PersonStatusItem(
                index: 2,
                name: "Alexio Morales",
                code: "CT020219",
                color: secondary,
                isAttended: true,
                nextColor: primary,
                time: "09:30",
              ),
              PersonStatusItem(
                index: 3,
                name: "Alexio Morales",
                code: "CT020219",
                color: primary,
                isAttended: false,
                nextColor: primary,
                time: "09:30",
              ),
              PersonStatusItem(
                index: 4,
                name: "Alexio Morales",
                code: "CT020219",
                color: primary,
                isAttended: false,
                nextColor: primary,
                time: "09:30",
              ),
              PersonStatusItem(
                index: 5,
                name: "Alexio Morales",
                code: "CT020219",
                color: primary,
                isAttended: false,
                nextColor: primary,
                time: "09:30",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
