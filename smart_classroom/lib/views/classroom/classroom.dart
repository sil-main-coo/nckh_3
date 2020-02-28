import 'package:flutter/material.dart';
import 'package:smart_classroom/configs/singleton/size_screen.dart';
import 'package:smart_classroom/configs/values/colors.dart';

import 'children/devices.dart';
import 'children/status.dart';

class ClassroomPage extends StatelessWidget {
  ClassroomPage({this.index});

  final int index;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Classroom 0${index+1}'),
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: primary,
            width: double.infinity,
          ),
          ListView(
            children: <Widget>[
              StatusClassroom(),
              SizedBox(height: SizeScreen.getInstance(context).height/20,),
              DevicesClassroom(),
            ],
          ),
        ],
      ),
    );
  }

}
