import 'package:manish_portfolio/constants/exports.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(dpImg),
            ),
            const SizedBox(height: 8),
            Text('Manish Agrahari', style: normalWhiteText),
            Text('Flutter Developer', style: smallWhiteText),
            Text('+91 7007033600', style: smallWhiteText),
          ],
        ),
      ),
    );
  }
}
