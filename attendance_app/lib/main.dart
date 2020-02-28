import 'package:attendance_app/router/route_name.dart';
import 'package:attendance_app/router/router.dart';
import 'package:attendance_app/views/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'configs/values/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // set color status bar and navigationbar
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: secondary, // navigation bar color
      statusBarColor: primary, // status bar color
      statusBarBrightness: Brightness.light
  ));

  // set only vertical screen
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_){
    runApp(MyApp());
  });

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: RouteName.myApp,
      onGenerateRoute: Router.onGenerateRoute,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: primary,
              iconTheme: IconThemeData(color: colorIconBlack)
          ),
          fontFamily: 'Montserrat',
          primaryColor: primary,
          primaryColorDark: primary,
          primaryColorLight: primaryLight,
          accentColor: secondary,
         // indicatorColor: secondaryLight,
          focusColor: primary,
          disabledColor: primaryLight,
          hintColor: primaryLight,
          cursorColor: secondary,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: colorTextBlack,
              fontSize: 22, fontWeight: FontWeight.bold),
            headline: TextStyle(color: colorTextWhite,
              fontSize: 26, fontWeight: FontWeight.bold),
            subhead: TextStyle(color: colorTextWhite,
              fontSize: 18,),
            body2: TextStyle(color: colorTextWhite,
              fontSize: 16,),
            body1: TextStyle(color: colorTextWhite,
              fontSize: 20,),
            caption: TextStyle(color: colorTextWhite,
              fontSize: 14,),
            button: TextStyle(color: colorTextWhite,
              fontSize: 16,),
            subtitle: TextStyle(color: colorTextWhite,
              fontSize: 16,),
            display1: TextStyle(color: colorTextWhite,
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          primaryIconTheme: IconThemeData(
              color: colorIconBlack
          ),
          accentIconTheme: IconThemeData(
              color: colorIconWhite
          )
      ),
      home: LoginPage(),
    );
  }
}
