import 'package:manish_portfolio/Constants/exports.dart';

const appName = 'Manish Portfolio';
const defaultPadding = 8.00;
const defaultMargin = 8.00;
const defaultRadius = 8.00;
const defaultCardRadius = 12.00;
const xsmallTextsize = 10.00;
const smallTextsize = 12.00;
const normalTextsize = 14.00;
const mediumTextsize = 16.00;
const largeTextsize = 18.00;
const xLargeTextsize = 22.00;
final borderRadius = BorderRadius.circular(defaultRadius);
const maxWidth = 1440.0;
const defaultGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    primaryColor,
    secondaryColor,
  ],
);
const defaultDuration = Duration(seconds: 1);
const customGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    oceanBlue,
    deepOrange,
    creamColor,
  ],
);
final defaultShadow = BoxShadow(
  offset: const Offset(0, 50),
  blurRadius: 50,
  color: const Color(0xFF0700B1).withOpacity(0.15),
);

final defaultCardShadow = BoxShadow(
  offset: const Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

const loading = Center(
  child: CircularProgressIndicator(),
);
