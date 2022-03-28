import 'package:flutter/material.dart';

import '../../../components/animated_progress_indicator.dart';
import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: kDevSkills[kDevSkills.keys.toList()[0]]!,
                label: kDevSkills.keys.toList()[0],
              ),
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: kDevSkills[kDevSkills.keys.toList()[1]]!,
                label: kDevSkills.keys.toList()[1],
              ),
            ),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: kDevSkills[kDevSkills.keys.toList()[2]]!,
                label: kDevSkills.keys.toList()[2],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
