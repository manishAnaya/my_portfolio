import 'package:feedback/feedback.dart';
import 'package:manish_portfolio/constants/exports.dart';
import 'package:manish_portfolio/responsive.dart';
import 'package:manish_portfolio/screens/main_side/main_side.dart';
import 'package:manish_portfolio/screens/drawer_side/side_menu.dart';

class MainScreeen extends StatelessWidget {
  const MainScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              iconTheme: const IconThemeData(
                color: lightTextColor,
              ),
              title: Text('Manish Agrahari', style: mediumLightText),
            )
          : null,
      drawer: const SideMenu(),
      body: Container(
        width: double.infinity,
        color: darkColor,
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Row(
              children: [
                if (Responsive.isDesktop(context))
                  const Expanded(flex: 2, child: SideMenu()),
                const SizedBox(width: defaultPadding * 2),
                const Expanded(flex: 7, child: MainSide()),
                const SizedBox(width: defaultPadding * 2),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.feedback),
        onPressed: () => BetterFeedback.of(context).show(
            (UserFeedback feedback) =>
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                        'Feedback submitted successfully, Thanks for your feedback...'),
                  ),
                )),
      ),
    );
  }
}
