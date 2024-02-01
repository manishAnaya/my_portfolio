import 'package:manish_portfolio/Constants/exports.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget largeMobile;
  final Widget tablet;
  final Widget desktop;
  const Responsive(
      {super.key,
      required this.mobile,
      required this.largeMobile,
      required this.tablet,
      required this.desktop});

  static bool isSmallMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 426;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;

  static bool isLargeMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 927;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1130;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1130;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width >= 1024) {
      return desktop;
    } else if (size.width >= 700) {
      return tablet;
    } else if (size.width >= 450) {
      return largeMobile;
    } else {
      return mobile;
    }
  }
}
