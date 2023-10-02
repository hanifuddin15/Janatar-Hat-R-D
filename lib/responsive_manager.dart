import 'package:flutter/cupertino.dart';

class Responsive{
  double getDeviceheight(dynamic context){
    var deviceHeight = MediaQuery.of(context).size.height;
    return deviceHeight;
  }
  double getDevicewidth(dynamic context){
    var devicewidth = MediaQuery.of(context).size.width;
    return devicewidth;
  }
}