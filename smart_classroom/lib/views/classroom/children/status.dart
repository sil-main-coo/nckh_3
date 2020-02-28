import 'package:flutter/material.dart';
import 'package:smart_classroom/animations/delay_animation.dart';
import 'package:smart_classroom/configs/singleton/size_screen.dart';
import 'package:smart_classroom/configs/values/colors.dart';

class StatusClassroom extends StatefulWidget {
  @override
  _StatusClassroomState createState() => _StatusClassroomState();
}

class _StatusClassroomState extends State<StatusClassroom> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).primaryTextTheme.headline;

    return Column(
      children: <Widget>[
        DelayedAnimation(delay: 150, offset: Offset(0, -0.35), child: Text('Status', style: style)),
        SizedBox(height: SizeScreen.getInstance(context).height/30,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DelayedAnimation(
            delay: 150, offset: Offset(0, 0.35),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 32.0, // gap between adjacent chips
              runSpacing: 4.0, // gap between lines
              children: <Widget>[
                _item(Icons.lightbulb_outline, 'Lighting', '80', '%'),
                _item(Icons.opacity,'Humidity', '53', '%'),
                _item(Icons.wb_sunny,'Temperature', '28', '°C'),
              ],
            ),
          ),
        )
      ],
    );
  }

  _item(IconData icon, String label, String param, String dram){
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(icon, color: transparentWhite56,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(label,style: Theme.of(context).primaryTextTheme.body1
                .copyWith(fontWeight: FontWeight.w600, color: transparentWhite56),),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(param,style: Theme.of(context).primaryTextTheme.title,),
                Text(dram,style: Theme.of(context).primaryTextTheme.caption,),
              ],
            )
          ],
        ),
      ],
    );
  }
}
