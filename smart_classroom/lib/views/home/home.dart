import 'package:flutter/material.dart';
import 'package:smart_classroom/animations/delay_animation.dart';
import 'package:smart_classroom/configs/values/colors.dart';

import 'children/drawer.dart';
import 'children/item_gridview.dart';

class HomePage extends StatelessWidget {
  final _scfKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scfKey,
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          elevation: 0,
          title: Text('Smart Classroom'),
          automaticallyImplyLeading: false,
          leading: IconButton(icon: Icon(Icons.sort),
              onPressed: () => _scfKey.currentState.openDrawer()),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {})
          ],
        ),
        body: Stack(
          children: <Widget>[
            Container(
              color: primary,
            ),
            _gridView()
          ],
        ),
      drawer: DrawerMenu(),
    );
  }

//  _searching(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.symmetric(horizontal: 64),
//      child: TextFormField(
//        style: Theme.of(context).primaryTextTheme.body2,
//        textInputAction: TextInputAction.search,
//        decoration: InputDecoration(
//          hintText: "Searching",
//          hintStyle: Theme.of(context).primaryTextTheme.body2.copyWith(color: transparentWhite56),
//          suffixIcon: Icon(Icons.search, color: colorIconWhite,),
//          enabledBorder: UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.white),
//          ),
//          focusedBorder: UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.white),
//          ),
//        ),
//      ),
//    );
//  }

  _gridView() {
    return DelayedAnimation(
      delay: 150,
      offset: Offset(0, 0.35),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2 ),
        itemBuilder: (context, index) => ItemClassroom(index),
        itemCount: 6,
      ),
    );
  }
}
