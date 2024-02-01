import 'package:manish_portfolio/Constants/exports.dart';
import 'package:manish_portfolio/models/project.dart';
import 'package:manish_portfolio/responsive.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text('My Projects',
              style: Responsive.isLargeMobile(context)
                  ? normalWhiteText
                  : xLargeWhiteText),
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 9,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context) ? 1 : 3,
            mainAxisSpacing: defaultPadding * 2,
            crossAxisSpacing: defaultPadding * 2,
            childAspectRatio: Responsive.isDesktop(context)
                ? 1.1
                : Responsive.isSmallMobile(context)
                    ? 2
                    : Responsive.isMobile(context)
                        ? 3
                        : 1.25,
          ),
          itemBuilder: (context, index) => Container(
            padding: Responsive.isMobile(context)
                ? const EdgeInsets.all(defaultPadding)
                : const EdgeInsets.all(defaultPadding * 2),
            color: secondaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  myProjects[index].title,
                  style: Responsive.isLargeMobile(context)
                      ? mediumWhiteText
                      : Responsive.isMobile(context)
                          ? normalWhiteText
                          : largeWhiteText,
                  maxLines: Responsive.isLargeMobile(context) ? 1 : 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  myProjects[index].description,
                  style: Responsive.isLargeMobile(context)
                      ? normalLightText
                      : Responsive.isMobile(context)
                          ? smallLightText
                          : mediumLightText,
                  maxLines: Responsive.isLargeMobile(context) ? 3 : 5,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(myProjects[index].title,
                              style: xLargeWhiteText),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(myProjects[index].description,
                                  style: mediumLightText),
                              TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(FontAwesomeIcons.googlePlay,
                                    size: 16),
                                label: Text(
                                  'Play Store',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      icon: const Icon(Icons.expand_circle_down,
                          size: 16, color: primaryColor),
                      label: Text(
                        'See More',
                        style: Responsive.isLargeMobile(context)
                            ? TextStyle(
                                color: primaryColor,
                                fontSize: 12.0,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              )
                            : TextStyle(
                                color: primaryColor,
                                fontSize: 16.0,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                      ),
                    ),
                    Responsive.isLargeMobile(context)
                        ? Container()
                        : TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(FontAwesomeIcons.googlePlay,
                                size: 16),
                            label: Text(
                              'Play Store',
                              style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                            ),
                          )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
