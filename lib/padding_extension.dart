import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension PaddingExtension on BuildContext {
  double get lowValue => 5.sp;

  double get mediumValue => 10.sp;

  double get highValue => 20.sp;

  double get higherValue => 30.sp;

  double get highestValue => 40.sp;

  double get lowValHeight => 5.h;

  double get mediumValHeight => 10.h;

  double get highValHeight => 20.h;

  double get higherValHeight => 30.h;

  double get highestValHeight => 40.h;

  double get lowValWidth => 5.w;

  double get mediumValWidth => 10.w;

  double get highValWidth => 20.w;

  double get higherValWidth => 30.w;

  double get highestValWidth => 40.w;

  EdgeInsets get allPaddingLow => EdgeInsets.all(lowValue);

  EdgeInsets get allPaddingMedium => EdgeInsets.all(mediumValue);

  EdgeInsets get allPaddingHigh => EdgeInsets.all(highValue);

  EdgeInsets get allPaddingHigher => EdgeInsets.all(higherValue);

  EdgeInsets get horPaddingLow => EdgeInsets.symmetric(horizontal: lowValWidth);

  EdgeInsets get horPaddingMedium =>
      EdgeInsets.symmetric(horizontal: mediumValWidth);

  EdgeInsets get horPaddingHigh =>
      EdgeInsets.symmetric(horizontal: highValWidth);

  EdgeInsets get horPaddingHigher =>
      EdgeInsets.symmetric(horizontal: higherValWidth);

  EdgeInsets get verPaddingLow => EdgeInsets.symmetric(vertical: lowValHeight);

  EdgeInsets get verPaddingMedium =>
      EdgeInsets.symmetric(vertical: mediumValHeight);

  EdgeInsets get verPaddingHigh =>
      EdgeInsets.symmetric(vertical: highValHeight);

  EdgeInsets get verPaddingHigher =>
      EdgeInsets.symmetric(vertical: higherValHeight);

  EdgeInsets get otPaddingLow => EdgeInsets.fromLTRB(0, lowValHeight, 0, 0);

  EdgeInsets get otPaddingMedium =>
      EdgeInsets.fromLTRB(0, mediumValHeight, 0, 0);

  EdgeInsets get otPaddingHigh => EdgeInsets.fromLTRB(0, highValHeight, 0, 0);

  EdgeInsets get otPaddingHigher =>
      EdgeInsets.fromLTRB(0, higherValHeight, 0, 0);

  EdgeInsets get obPaddingLow => EdgeInsets.fromLTRB(0, 0, 0, lowValHeight);

  EdgeInsets get obPaddingMedium =>
      EdgeInsets.fromLTRB(0, 0, 0, mediumValHeight);

  EdgeInsets get obPaddingHigh => EdgeInsets.fromLTRB(0, 0, 0, highValHeight);

  EdgeInsets get obPaddingHigher =>
      EdgeInsets.fromLTRB(0, 0, 0, higherValHeight);

  EdgeInsets get olPaddingLow => EdgeInsets.fromLTRB(lowValWidth, 0, 0, 0);

  EdgeInsets get olPaddingMedium =>
      EdgeInsets.fromLTRB(mediumValWidth, 0, 0, 0);

  EdgeInsets get olPaddingHigh => EdgeInsets.fromLTRB(highValWidth, 0, 0, 0);

  EdgeInsets get olPaddingHigher =>
      EdgeInsets.fromLTRB(higherValWidth, 0, 0, 0);

  EdgeInsets get olPaddingHighest =>
      EdgeInsets.fromLTRB(highestValWidth, 0, 0, 0);

  EdgeInsets get orPaddingLow => EdgeInsets.fromLTRB(0, 0, lowValWidth, 0);

  EdgeInsets get orPaddingMedium =>
      EdgeInsets.fromLTRB(0, 0, mediumValWidth, 0);

  EdgeInsets get orPaddingHigh => EdgeInsets.fromLTRB(0, 0, highValWidth, 0);

  EdgeInsets get orPaddingHigher =>
      EdgeInsets.fromLTRB(0, 0, higherValWidth, 0);

  EdgeInsets get buttonPadding => EdgeInsets.only(
        left: 20.w,
        right: 20.w,
        top: 10.h,
        bottom: 10.h,
      );
}
