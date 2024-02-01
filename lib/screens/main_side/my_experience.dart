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
                  ? normalWhiteText
                  : xLargeWhiteText),
          const SizedBox(height: defaultPadding * 2),
          Responsive.isMobile(context)
              ? Column(
                  children: [
                    buildElectricalExp(context),
                    const SizedBox(height: defaultPadding * 2),
                    buildFlutterExp(context),
                  ],
                )
              : IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: buildElectricalExp(context),
                      ),
                      const SizedBox(width: defaultPadding * 2),
                      Expanded(
                        child: buildFlutterExp(context),
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
            '- Collaborated across technical and design teams toproduce innovative software applications.\n- Kept detailed records of releases and software fixesfor optimum traceability.\n- Detailed and evaluated requirements for softwareapplications and operating systems.\n- Working with Flutter for App development from GetXlibrary om more than 10 Projects.\n- Understanding the requirements and Functionalspecification.\n- Knowledge of Dart programming language, RestAPIs and integration of various APIs from thirdparties.',
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
            'Electrical Engineer',
            style: Responsive.isLargeMobile(context)
                ? mediumWhiteText
                : largeWhiteText,
          ),
          const SizedBox(height: 4),
          Text('Obra Thermal Power Plant, SWPE ', style: mediumWhiteText),
          const SizedBox(height: 4),
          Text(
            '05/2017 - 03/2022, Obra, Sonbhadra',
            style: Responsive.isLargeMobile(context)
                ? normalLightText
                : Responsive.isMobile(context)
                    ? smallLightText
                    : mediumLightText,
          ),
          const SizedBox(height: 4),
          Text(
            'Sunworld is a dynamic and innovative company that operates in the field of industrial automation and control systems. the company has carved a niche for itself in providing cutting-edge solutions for maintenance and repair of electrical products and systems.',
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
            '- Performed maintenance procedure.\n- Repairing of existing electrical products and systemlike Control valves and Transmitter. \n- Working on DCS (Distributed Control Panels).\n- Proactive approach to minimizing operational risks associated with electrical maintenance activities.\n -In-depth understanding of control panels and their role in optimizing industrial processes.\n- Specialized in the repair of control valves and transmitters, showcasing hands-on technical skills.',
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
