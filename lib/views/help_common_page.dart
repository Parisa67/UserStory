import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpCommon {
  double defaultScreenWidth = 360;
  double defaultScreenHeight = 640;

  EdgeInsetsDirectional getPaddingByDirection(
      {double start = 0, double top = 0, double bottom = 0, double end = 0}) {
    return EdgeInsetsDirectional.only(
        start: ScreenUtil().setWidth(start),
        top: ScreenUtil().setHeight(top),
        bottom: ScreenUtil().setHeight(bottom),
        end: ScreenUtil().setWidth(end));
  }
}

HelpCommon help = HelpCommon();
