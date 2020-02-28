
import 'package:flutter/material.dart';
import 'package:smart_classroom/configs/values/colors.dart';
import 'package:smart_classroom/router/route_name.dart';
import 'package:smart_classroom/views/classroom/classroom.dart';
import 'package:smart_classroom/views/home/home.dart';

import '../main.dart';

class Router{
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    var args = settings.arguments;

    switch(settings.name){
      case RouteName.myApp:
        return MaterialPageRoute(builder: (_context)=> MyApp());
      case RouteName.home:
        return MaterialPageRoute(builder: (_context)=> HomePage());
      case RouteName.classroom:
        return MaterialPageRoute(builder: (_context)=> ClassroomPage(index: args,));
//      case RouteName.profile:
//        return MaterialPageRoute(builder: (_context)=> ProfilePerson());
      default:
        return MaterialPageRoute(builder: (_context)=> FailedRouteWidget(settings.name));
    }
  }
}

class FailedRouteWidget extends StatelessWidget {
  FailedRouteWidget(this._name);

  final String _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lạc đường rồi'),),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.sentiment_neutral, size: 32, color: primary,),
              Text('Có vẻ bạn đã bị lạc đường $_name'),
            ],
          ),
        ),
      ),
    );
  }

}
