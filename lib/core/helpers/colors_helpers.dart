import 'package:flutter/material.dart';

class ColorHelper {
  static Color backgroundColor() {
    return const Color(0xffe7eaeb);
  }

  static Color weakWhite() {
    return const Color(0xffF8F7FB);
  }

  static Color contrastDark() {
    return const Color(0xff111111);
  }

  static Color contrastLight() {
    return const Color(0xffFFFFFF);
  }

  static Color darkBlue() {
    return const Color(0xff0F3565);
  }

  static Color equipacareGreen() {
    return const Color(0xffB1D23D);
  }

  static Color secondGreen() {
    return const Color(0xff38B890);
  }

  static Color thirdGreen() {
    return const Color(0xffCEE6D7);
  }

  static Color boldTextColor() {
    return const Color(0xff1B1F27);
  }

  static Color mediumTextColor() {
    return const Color(0xff3F444D);
  }

  static Color firstGray() {
    return const Color(0xff414647);
  }

  static Color fourthGray() {
    return const Color(0xffA1B3AD);
  }

  static Color lightTextColor() {
    return const Color(0xffE7EAEB);
  }

  static Color lightTextColor2() {
    return const Color(0xff515759);
  }

  static Color lightTextColor3() {
    return const Color(0xff7A8783);
  }

  static Color blueColor2() {
    return const Color(0xff3C8EA6);
  }

  static Color firstYellow() {
    return const Color(0xffF08C2B);
  }

  static Color firstRed() {
    return const Color(0xffFF4F64);
  }

  static Color dangerColor() {
    return const Color(0xffE02D3C);
  }

  static Color errorColor() {
    return const Color(0xffC41232);
  }

  static Color timeLineColors1() {
    return hexToColor('#A7F5CA');
  }

  static Color timeLineColors2() {
    return hexToColor('#AEF3FE');
  }

  static Color timeLineColors3() {
    return hexToColor('#3657FF');
  }

  static Color timeLineColors4() {
    return hexToColor('#0DB560');
  }

  static List<Color> colors = [
    timeLineColors1(),
    timeLineColors2(),
    timeLineColors3(),
    timeLineColors4(),
  ];

  static List<Color> colors1 = [
    timeLineColors4(),
    timeLineColors1(),
    timeLineColors2(),
    timeLineColors3(),
  ];

  static Color hexToColor(String hexString) {
    try {
      hexString = hexString.replaceFirst('#', '');

      if (hexString.length == 6) {
        hexString = 'FF$hexString';
      }

      return Color(int.parse(hexString, radix: 16));
    } catch (e) {
      return Colors.red;
    }
  }
}
