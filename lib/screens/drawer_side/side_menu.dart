import 'package:manish_portfolio/Constants/exports.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding * 2),
                child: Column(
                  children: [
                    const InfoText(title: 'Address', text: '6/45 Chopan Road'),
                    const InfoText(title: 'City', text: 'Obra Sonbhadra'),
                    const InfoText(title: 'Country', text: 'India'),
                    const Divider(),
                    const MySkills(),
                    const Divider(),
                    const MyCoding(),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text("VIEW/DOWNLOAD CV", style: normalWhiteText),
                            const SizedBox(width: defaultPadding / 2),
                            const Icon(FontAwesomeIcons.download),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: const Color(0xFF24242E),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            onPressed: () => launchUrl(Uri.parse(
                                'https://www.linkedin.com/in/manish-kumar-agrahari-18361a177/')),
                            icon: const Icon(FontAwesomeIcons.linkedin),
                          ),
                          IconButton(
                            onPressed: () => launchUrl(
                                Uri.parse('https://wa.me/7007033600?text=' '')),
                            icon: const Icon(FontAwesomeIcons.whatsapp),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(FontAwesomeIcons.twitter),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final String title, text;
  const InfoText({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: normalWhiteText),
          Text(text, style: normalLightText),
        ],
      ),
    );
  }
}
