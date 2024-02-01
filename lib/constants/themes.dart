import 'package:manish_portfolio/constants/exports.dart';

abstract class MyTheme {
  static final theme = ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: bgColor,
    canvasColor: bgColor,
  );
}
