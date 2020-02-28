import 'package:attendance_app/configs/values/colors.dart';
import 'package:attendance_app/views/home/children/drawer.dart';
import 'package:attendance_app/views/home/children/header.dart';
import 'package:attendance_app/views/home/children/gridview_classroom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        backgroundColor: bgWhite,
        title: Text('Attendance', style: Theme.of(context).primaryTextTheme.title,),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.sort),
          onPressed: () =>  _drawerKey.currentState.openDrawer(),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: primary,
          child: Column(
            children: <Widget>[
              HeaderHome(),
              Classrooms()
            ],
          ),
        ),
      ),
      drawer: DrawerMenu(),
    );
  }
}
