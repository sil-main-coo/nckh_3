import 'package:attendance_app/animations/delay_animation.dart';
import 'package:attendance_app/configs/singleton/size_screen.dart';
import 'package:attendance_app/configs/values/colors.dart';
import 'package:attendance_app/router/route_name.dart';
import 'package:flutter/material.dart';

class Classrooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: SizeScreen.getInstance(context).height/14,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DelayedAnimation(
            offset: Offset(0, 0.35),
            delay: 150,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2 ),
              itemBuilder: (context, index) => ItemClassroom(index),
              itemCount: 4,
            ),
          ),
        ),
      ],
    );
  }
}

class ItemClassroom extends StatelessWidget {
  ItemClassroom(this._index);

  final int _index;

  @override
  Widget build(BuildContext context) {
    final sc = SizeScreen.getInstance(context);
    final size = sc.width/3;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: size,
        width: size,
        child: GestureDetector(
          onTap: ()=> Navigator.pushNamed(context, RouteName.classroom, arguments: _index),
          child: Card(
              color: secondary,
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Classroom', style: Theme.of(context).primaryTextTheme.title.copyWith(color: colorTextWhite),),
                  Text('0${_index+1}', style: Theme.of(context).primaryTextTheme.headline,)
                ],
              ),
            ),
        ),
        ),
    );
  }
}

