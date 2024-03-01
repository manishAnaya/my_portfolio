import 'package:manish_portfolio/Constants/exports.dart';
import 'package:manish_portfolio/responsive.dart';

class MyExperience extends StatelessWidget {
  const MyExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Experience',
              style: Responsive.isLargeMobile(context)
                  ? mediumWhiteText
                  : xLargeWhiteText),
          const SizedBox(height: defaultPadding * 2),
          Responsive.isMobile(context)
              ? Column(
                  children: [
                    buildFlutterExp(context),
                    const SizedBox(height: defaultPadding * 2),
                    buildElectricalExp(context),
                  ],
                )
              : IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: buildFlutterExp(context),
                      ),
                      const SizedBox(width: defaultPadding * 2),
                      Expanded(
                        child: buildElectricalExp(context),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  Container buildFlutterExp(BuildContext context) {
    return Container(
      color: secondaryColor,
      padding: const EdgeInsets.all(defaultPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Flutter Developer',
            style: Responsive.isLargeMobile(context)
                ? mediumWhiteText
                : largeWhiteText,
          ),
          const SizedBox(height: 4),
          Text('Act T Connect Pvt. Ltd.', style: mediumWhiteText),
          const SizedBox(height: 4),
          Text(
            '07/2022 - Present, Jhansi, India. ',
            style: Responsive.isLargeMobile(context)
                ? normalLightText
                : Responsive.isMobile(context)
                    ? smallLightText
                    : mediumLightText,
          ),
          const SizedBox(height: 4),
          Text(
            'Act T Connect is an innovative and highly in demand Web designing and Application development company based in Jhansi, Uttar Pradesh.',
            style: Responsive.isLargeMobile(context)
                ? normalLightText
                : Responsive.isMobile(context)
                    ? smallLightText
                    : mediumLightText,
          ),
          const SizedBox(height: 4),
          Text('Achievements/Tasks', style: mediumWhiteText),
          const SizedBox(height: 4),
          Text(
            '- Collaborated across technical and design teams to produce innovative software applications.\n- Kept detailed records of releases and software fixesfor optimum traceability.\n- Detailed and evaluated requirements for softwareapplications and operating systems.\n- Working with Flutter for App development from GetXlibrary om more than 10 Projects.\n- Understanding the requirements and Functionalspecification.\n- Knowledge of Dart programming language, RestAPIs and integration of various APIs from thirdparties.',
            style: Responsive.isLargeMobile(context)
                ? normalLightText
                : Responsive.isMobile(context)
                    ? smallLightText
                    : mediumLightText,
          ),
        ],
      ),
    );
  }

  Container buildElectricalExp(BuildContext context) {
    return Container(
      color: secondaryColor,
      padding: const EdgeInsets.all(defaultPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Junior Flutter Developer',
            style: Responsive.isLargeMobile(context)
                ? mediumWhiteText
                : largeWhiteText,
          ),
          const SizedBox(height: 4),
          Text('iBigDo Technologies', style: mediumWhiteText),
          const SizedBox(height: 4),
          Text(
            '12/2018 - 05/2022, Obra, Sonbhadra',
            style: Responsive.isLargeMobile(context)
                ? normalLightText
                : Responsive.isMobile(context)
                    ? smallLightText
                    : mediumLightText,
          ),
          const SizedBox(height: 4),
          Text(
            'IBigDo Technologies has proudly delivered five years of exceptional service, specializing in crafting tailored mobility solutions, including branding, logo design, packaging, catalogue design, and outdoor branding.',
            style: Responsive.isLargeMobile(context)
                ? normalLightText
                : Responsive.isMobile(context)
                    ? smallLightText
                    : mediumLightText,
          ),
          const SizedBox(height: 4),
          Text('Achievements/Tasks', style: mediumWhiteText),
          const SizedBox(height: 4),
          Text(
            "Project Setup: Setting up Flutter projects with the appropriate dependencies, project structure, and version control to kickstart development.\nUI/UX Design Implementation: Translating design mockups into functional user interfaces, ensuring responsiveness across various screen sizes and devices.\nState Management: Implementing effective state management solutions (such as Provider) to manage the application's state and data flow efficiently.\nAPI Integration: Connecting the application to backend services and APIs, handling data retrieval, and ensuring proper error handling and data caching.",
            style: Responsive.isLargeMobile(context)
                ? normalLightText
                : Responsive.isMobile(context)
                    ? smallLightText
                    : mediumLightText,
          ),
        ],
      ),
    );
  }
}
