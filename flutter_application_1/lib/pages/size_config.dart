import 'package:flutter/material.dart';

class SizeConfig {
  static double _screenWidth;
  static double _screenHight;
  static double _blockSizeHorizontal;
  static double _blockSizeVertical;
  static double _textMultiplier;
  static double _imageSizeMultiplier;
  static double _heightMultiplier;
  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHight = constraints.maxHeight;
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHight = constraints.maxWidth;
    }
    _blockSizeHorizontal = _screenWidth / 100;
    _blockSizeVertical = _screenHight / 100;

    _textMultiplier = _blockSizeVertical;
    _imageSizeMultiplier = _blockSizeHorizontal;
    _heightMultiplier = _blockSizeVertical;

    print(_blockSizeVertical);
    print(_blockSizeHorizontal);
  }
}
