import 'package:flutter/material.dart';
import 'package:smart_classroom/configs/singleton/size_screen.dart';
import 'package:smart_classroom/configs/values/colors.dart';
import 'package:smart_classroom/router/route_name.dart';

class ItemClassroom extends StatelessWidget {
  ItemClassroom(this._index);

  final int _index;

  @override
  Widget build(BuildContext context) {
    final sc = SizeScreen.getInstance(context);
    final size = sc.width/3;
    final tagHero = 'tagClassroom$_index';

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Hero(
        tag: tagHero,
        child: SizedBox(
          height: size,
          width: size,
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, RouteName.classroom, arguments: _index),
            child: Card(
              color: primaryDark,
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
      ),
    );
  }
}