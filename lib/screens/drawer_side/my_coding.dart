import 'package:manish_portfolio/constants/exports.dart';

class MyCoding extends StatelessWidget {
  const MyCoding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Coding', style: normalWhiteText),
        const SizedBox(height: 12),
        const AnimatedLinearIndicator(percentage: 0.85, label: 'Dart'),
        const AnimatedLinearIndicator(percentage: 0.65, label: 'Java'),
        const AnimatedLinearIndicator(percentage: 0.7, label: 'HTML'),
        const AnimatedLinearIndicator(percentage: 0.65, label: 'CSS'),
      ],
    );
  }
}

class AnimatedLinearIndicator extends StatelessWidget {
  final double percentage;
  final String label;
  const AnimatedLinearIndicator(
      {super.key, required this.percentage, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0.0, end: percentage),
        duration: defaultDuration,
        builder: (context, value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label, style: smallWhiteText),
                Text('${(value * 100).toInt().toString()} %',
                    style: normalLightText),
              ],
            ),
            const SizedBox(height: 8.0),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: bgColor,
            ),
          ],
        ),
      ),
    );
  }
}
