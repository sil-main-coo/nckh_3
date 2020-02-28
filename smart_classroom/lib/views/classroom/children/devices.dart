import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_classroom/animations/delay_animation.dart';
import 'package:smart_classroom/configs/singleton/size_screen.dart';
import 'package:smart_classroom/configs/values/colors.dart';

class DevicesClassroom extends StatefulWidget {
  @override
  _DevicesClassroomState createState() => _DevicesClassroomState();
}

class _DevicesClassroomState extends State<DevicesClassroom> {
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).primaryTextTheme.headline;

    return Column(
      children: <Widget>[
        DelayedAnimation(delay: 150, offset: Offset(0, -0.35),child: Text('Devices', style: style)),
        SizedBox(height: SizeScreen.getInstance(context).height/30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            LightItem(),
            FanItem(),
          ],
        ),
        SizedBox(height: SizeScreen.getInstance(context).height/20,),
        ButtonSource(),
      ],
    );
  }
}

class LightItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sc = SizeScreen.getInstance(context);

    return DelayedAnimation(
      offset: Offset(-0.35, 0),
      delay: 150,
      child: SizedBox(
        height: sc.height/5,
        width: sc.width/2.5,
        child: RaisedButton(
          onPressed: (){},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
          color: primaryDark,
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.wb_sunny, color: colorIconWhite,),
              Text('Light', style: Theme
                  .of(context)
                  .primaryTextTheme
                  .title
                  .copyWith(fontWeight: FontWeight.w600),),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                Text('80', style: Theme
                    .of(context)
                    .primaryTextTheme
                    .body1
                    .copyWith(
                    fontWeight: FontWeight.w600, color: transparentWhite56),),
                Text('%', style: Theme.of(context).primaryTextTheme.caption.copyWith(color: transparentWhite56),)
              ],)
            ],
          ),
        ),
      ),
    );
  }
}

class FanItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sc = SizeScreen.getInstance(context);

    return DelayedAnimation(
      offset: Offset(0.35, 0),
      child: SizedBox(
        height: sc.height/5,
        width: sc.width/2.5,
        child: RaisedButton(
          onPressed: (){},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
          color: primaryDark,
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.wb_sunny, color: colorIconWhite,),
              Text('Fan', style: Theme
                  .of(context)
                  .primaryTextTheme
                  .title
                  .copyWith(fontWeight: FontWeight.w600),),
              Text('OFF', style: Theme
                  .of(context)
                  .primaryTextTheme
                  .subtitle
                  .copyWith(
                  fontWeight: FontWeight.w600, color: transparentWhite56),),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonSource extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DelayedAnimation(
      delay: 150,
      offset: Offset(0, 0.35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _button(context),
          _text(context),
        ],
      ),
    );
  }

  _button(BuildContext context) {
    final size = SizeScreen.getInstance(context).width/4;

    return SizedBox(
      height: size,
      width: size,
      child: RaisedButton(
        onPressed: (){

        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(90))),
        color: secondary,
        child: Icon(Icons.star, color: colorIconWhite,),
      ),
    );
  }

  _text(BuildContext context) {
    final style1 = Theme.of(context).primaryTextTheme.subtitle;
    final style2 = Theme.of(context).primaryTextTheme.caption.copyWith(color: transparentWhite56);

    return Column(
      children: <Widget>[
        Text('Just type to sleep', style: style1,),
        Text('Press to turn off all devices', style: style2,)
      ],
    );
  }
}


