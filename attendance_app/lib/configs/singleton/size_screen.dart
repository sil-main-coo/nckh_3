import 'package:flutter/widgets.dart';

class SizeScreen{
  static SizeScreen _sizeScreen;
  static double _width;
  static double _height;

  double get width => _width;
  double get height => _height;

  SizeScreen._();

  static SizeScreen getInstance(BuildContext context){
    if(_sizeScreen == null){
      _sizeScreen = SizeScreen._();
      _width= MediaQuery.of(context).size.width;
      _height= MediaQuery.of(context).size.height;
    }
    return _sizeScreen;
  }

}