import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:manish_portfolio/constants/exports.dart';
import 'package:manish_portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isSmallMobile(context)
          ? 1.35
          : Responsive.isMobile(context)
              ? 2
              : 3,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding * 2),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(bgImg), fit: BoxFit.cover, opacity: 0.35),
          color: darkColor,
        ),
        child: bannerContent(context),
      ),
    );
  }

  Column bannerContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Discover my Amazing Art Space',
          style: Responsive.isDesktop(context)
              ? TextStyle(
                  color: whiteColor,
                  fontSize: 40,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                )
              : Responsive.isMobile(context)
                  ? TextStyle(
                      color: whiteColor,
                      fontSize: 14,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    )
                  : TextStyle(
                      color: whiteColor,
                      fontSize: 22,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                    ),
        ),
        const SizedBox(height: 8),
        Text(
            'Highly skilled Flutter developer with 5+ years of experience in mobile App development. Proficient in GetX statemanagement,\ndedicated to creating intuitive and high-performance applications',
            style: Responsive.isMobile(context)
                ? smallWhiteText
                : normalWhiteText),
        const SizedBox(height: 8),
        Responsive.isMobile(context) ? flutterCodedText(context) : Container(),
        Row(
          children: [
            Responsive.isSmallMobile(context)
                ? Container()
                : flutterCodedText(context),
            Responsive.isSmallMobile(context)
                ? SizedBox(
                    width: 295,
                    height: 40,
                    child: buildMobileAnimatedText(context),
                  )
                : buildAnimatedText(context),
            Responsive.isSmallMobile(context)
                ? Container()
                : flutterCodedText(context),
          ],
        ),
        Responsive.isMobile(context) ? flutterCodedText(context) : Container(),
        const SizedBox(height: 8),
        Responsive.isSmallMobile(context)
            ? Container()
            : ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
                onPressed: () =>
                    launchUrl(Uri.parse('https://wa.me/7007033600?text=' '')),
                child: Text(
                  'Contact me',
                  style: Responsive.isMobile(context)
                      ? smallWhiteText
                      : normalWhiteText,
                ),
              ),
      ],
    );
  }

  DefaultTextStyle buildAnimatedText(BuildContext context) {
    return DefaultTextStyle(
      style: Responsive.isMobile(context) ? smallWhiteText : normalWhiteText,
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TyperAnimatedText('I have build E-commerce App with API Integration',
              speed: const Duration(milliseconds: 60)),
          TyperAnimatedText('I have build Dating App with chat using Cometchat',
              speed: const Duration(milliseconds: 60)),
          TyperAnimatedText(
              'I have build School Management App with Attendance and result',
              speed: const Duration(milliseconds: 60)),
        ],
      ),
    );
  }

  DefaultTextStyle buildMobileAnimatedText(BuildContext context) {
    return DefaultTextStyle(
      style: Responsive.isMobile(context) ? smallWhiteText : normalWhiteText,
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TyperAnimatedText('I have build E-commerce App with\nAPI Integration',
              speed: const Duration(milliseconds: 60)),
          TyperAnimatedText(
              'I have build Dating App with\nchat using Cometchat',
              speed: const Duration(milliseconds: 60)),
          TyperAnimatedText(
              'I have build School Management App\nwith Attendance and result',
              speed: const Duration(milliseconds: 60)),
        ],
      ),
    );
  }

  RichText flutterCodedText(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '<',
        style: smallWhiteText,
        children: [
          TextSpan(text: 'flutter', style: smallColorText),
          TextSpan(
              text: '>',
              style: Responsive.isMobile(context)
                  ? smallWhiteText
                  : normalWhiteText)
        ],
      ),
    );
  }
}
