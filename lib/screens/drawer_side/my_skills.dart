import 'package:manish_portfolio/constants/exports.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Skills', style: normalWhiteText),
        const SizedBox(height: 12),
        const Row(
          children: [
            Expanded(
              child:
                  AnimatedCircularIndicator(label: 'Flutter', percentage: 0.8),
            ),
            SizedBox(width: 12),
            Expanded(
              child: AnimatedCircularIndicator(label: 'GetX', percentage: 0.75),
            ),
            SizedBox(width: 12),
            Expanded(
              child:
                  AnimatedCircularIndicator(label: 'Firebase', percentage: 0.6),
            ),
          ],
        ),
      ],
    );
  }
}

class AnimatedCircularIndicator extends StatelessWidget {
  final String label;
  final double percentage;
  const AnimatedCircularIndicator(
      {super.key, required this.label, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: percentage),
            duration: defaultDuration,
            builder: (context, value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  color: primaryColor,
                  backgroundColor: bgColor,
                  value: value,
                ),
                Center(
                  child: Text('${(value * 100).toInt().toString()} %',
                      style: normalWhiteText),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: smallWhiteText)
      ],
    );
  }
}
