import 'package:attendance_app/animations/delay_animation.dart';
import 'package:attendance_app/configs/values/colors.dart';
import 'package:flutter/material.dart';

class StatusPeople extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DelayedAnimation(
      delay: 800,
      offset: Offset(0, 0.35),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(5.0) //                 <--- border radius here
            ),
            border: Border.all(color: secondary)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _item(context, 'Current person', '02', colorCurrent),
            _item(context, 'Attended', '02', colorAttendDark),
            _item(context, 'Not attendance', '05', colorNoAttend),
          ],
        ),
      ),
    );
  }

  _item(BuildContext context, String label, String data, Color colorText){
    final style =  Theme.of(context).primaryTextTheme.subtitle.copyWith(color: colorText);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text('$label:', style: style),
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(data, style: style),
        )
      ],
    );
  }
}
