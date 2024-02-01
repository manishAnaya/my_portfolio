import 'package:manish_portfolio/constants/exports.dart';
import 'package:manish_portfolio/screens/main_side/main_banner.dart';
import 'package:manish_portfolio/screens/main_side/my_experience.dart';
import 'package:manish_portfolio/screens/main_side/my_projects.dart';

class MainSide extends StatelessWidget {
  const MainSide({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainBanner(),
          MyProjects(),
          MyExperience(),
        ],
      ),
    );
  }
}
