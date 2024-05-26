import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class AppTheme{

  static TextStyle appBarSelectedStyle = const TextStyle(fontFamily: 'LeagueSpartan-Bold', fontSize: 18, color: appBarSelectedColor);
  static TextStyle appBarUnselectedStyle = const TextStyle(fontFamily: 'LeagueSpartan-Medium', fontSize: 18, color: appBarUnSelectedColor);
  static TextStyle nameTextStyle = TextStyle(fontFamily: 'LeagueSpartan-SemiBold', fontSize: 38,
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.2
        ..color = Colors.white);

  static TextStyle descriptionTextStyle = const TextStyle(fontFamily: 'LeagueSpartan-SemiBold', fontSize: 24, color: generalHeadingTextColor);
  static TextStyle scrollDownTextStyle = const TextStyle(fontFamily: 'LeagueSpartan-Medium', fontSize: 12, color: generalHeadingTextColor);

  static TextStyle topicTitleTextStyle = const TextStyle(fontFamily: 'LeagueSpartan-Bold', fontSize: 32, color: secondaryOrangeColor);
  static TextStyle topicDescriptionTextStyle = const TextStyle(fontFamily: 'LeagueSpartan-Regular', fontSize: 24, color: primaryAppColor, );


}