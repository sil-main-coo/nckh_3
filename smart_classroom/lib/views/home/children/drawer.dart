
import 'package:flutter/material.dart';
import 'package:smart_classroom/configs/singleton/size_screen.dart';
import 'package:smart_classroom/configs/values/colors.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sc = SizeScreen.getInstance(context);
    final sizeHeader = sc.height/3.2;
    final sizeLogOut = sc.height/6;
    final sizeMenus= sc.height - (sizeHeader + sizeLogOut);


    return SafeArea(
      child: Drawer(
        child: Stack(
          children: <Widget>[
            Container(color: bgWhite,),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _header(context, sizeHeader),
                _menus(context, sizeMenus),
                _logOut(context, sizeLogOut),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _header(BuildContext context, double sizeHeader) {
    return Container(
      color: primaryDark,
      height: sizeHeader,
      width: double.infinity,
      child: HeaderDrawer(),
    );
  }

  _menus(BuildContext context, double sizeMenus) {
    return Container(
      padding: EdgeInsets.all(16),
      height: sizeMenus,
      child: ListView.builder(
        itemBuilder: (context, index) => MenuItem(index),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
      ),
    );
  }

  _logOut(BuildContext context, double sizeLogOut) {
    return ListTile(
      leading: Icon(Icons.flight_takeoff),
      title: Text('Log Out'),
    );
  }
}

class MenuItem extends StatelessWidget {
  MenuItem(this._index);

  final int _index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.home),
      title: Text('Menu $_index'),
    );
  }
}

class HeaderDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CircleAvatar(
          child: FlutterLogo(),
        ),
        Text("David John", style: Theme.of(context).primaryTextTheme.title.copyWith(color: colorTextWhite),),
        Text('abxc@gmail.com', style: Theme.of(context).primaryTextTheme.subtitle.copyWith(color: transparentWhite56),)
      ],
    );
  }
}


