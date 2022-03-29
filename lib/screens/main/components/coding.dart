import 'package:flutter/material.dart';

import '../../../components/animated_progress_indicator.dart';
import '../../../core/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: kCodingSkills[kCodingSkills.keys.toList()[0]],
          label: kCodingSkills.keys.toList()[0],
        ),
        AnimatedLinearProgressIndicator(
          percentage: kCodingSkills[kCodingSkills.keys.toList()[1]],
          label: kCodingSkills.keys.toList()[1],
        ),
        AnimatedLinearProgressIndicator(
          percentage: kCodingSkills[kCodingSkills.keys.toList()[2]],
          label: kCodingSkills.keys.toList()[2],
        ),
        AnimatedLinearProgressIndicator(
          percentage: kCodingSkills[kCodingSkills.keys.toList()[3]],
          label: kCodingSkills.keys.toList()[3],
        ),
        AnimatedLinearProgressIndicator(
          percentage: kCodingSkills[kCodingSkills.keys.toList()[4]],
          label: kCodingSkills.keys.toList()[4],
        ),
      ],
    );
  }
}
