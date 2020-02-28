import 'package:attendance_app/configs/singleton/size_screen.dart';
import 'package:attendance_app/configs/values/colors.dart';
import 'package:flutter/material.dart';

class ProfilePerson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sc = SizeScreen.getInstance(context);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _coverImage(context, sc),
          _buttonBack(context),
          InformationBox(),
        ],
      ),
    );
  }

  _buttonBack(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(icon: Icon(Icons.arrow_back, color: colorIconWhite,),
          onPressed: ()=> Navigator.pop(context)),
        )
    );
  }

  _coverImage(BuildContext context, SizeScreen sc) {
    final String assetName = 'assets/images/cover.png';
    final Widget cover = Image.asset(assetName, fit: BoxFit.cover,);

    return Container(
      height: sc.height/2.1,
      width: double.infinity,
      child: cover,
    );
  }
}
class InformationBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sc = SizeScreen.getInstance(context);
    final spaceTop = sc.height/14;
    final heightBox = sc.height/1.2;
    final heightDetail = sc.height/2;

    return Column(
      children: <Widget>[
        SafeArea(child: SizedBox(height: spaceTop,)),
        Container(
          height: heightBox,
          child: Column(
            children: <Widget>[
              _avatar(heightBox/4),
              SizedBox(height: spaceTop/4,),
              _name(context),
              _code(context),
              SizedBox(height: spaceTop/4,),
              _detailInfo(heightDetail),
            ],
          ),
        ),
      ],
    );
  }

  _avatar(double size) {
    final String assetName = 'assets/images/avatar.png';
    final Widget avatar = Image.asset(assetName, fit: BoxFit.cover,);

    return Container(
      width: size,
      height: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(90.0),
        child: avatar
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90.0),
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
      ),
    );
  }

  _name(BuildContext context) {
    return Text('Alexio Morales', style: Theme.of(context).primaryTextTheme.title.copyWith(color: colorTextWhite),);
  }

  _code(BuildContext context) {
    return Text('CT020219', style: Theme.of(context).primaryTextTheme.subtitle.copyWith(color: colorTextWhite),);
  }

  _detailInfo(double heightDetail) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: heightDetail,
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.person, color: secondary,),
                  title: Text('Alexio Morales'),
                ),
                ListTile(
                  leading: Icon(Icons.sd_card, color: secondary,),
                  title: Text('CT020219'),
                ),
                ListTile(
                  leading: Icon(Icons.phone, color: secondary,),
                  title: Text('+84 123 456'),
                ),
                ListTile(
                  leading: Icon(Icons.email, color: secondary,),
                  title: Text('abc@gmail.com'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
