import 'package:feedback/feedback.dart';
import 'package:manish_portfolio/Constants/exports.dart';
import 'package:manish_portfolio/screens/splash_screen.dart';

void main() {
  runApp(const BetterFeedback(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: MyTheme.theme,
      home: const SplashScreen(),
    );
  }
}
