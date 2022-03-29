import 'package:flutter/material.dart';

import '../../../components/animated_counter.dart';
import '../../../core/constants.dart';
import '../../../core/responsive.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: kYoutubeSubscribersInThousands,
                        text: "K+",
                      ),
                      label: "Subscribers",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: kYoutubeVideos,
                        text: "+",
                      ),
                      label: "Videos",
                    ),
                  ],
                ),
                const SizedBox(height: kDefaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: kGithubProjects,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: kGithubStars,
                        text: "K+",
                      ),
                      label: "Stars",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: kYoutubeSubscribersInThousands,
                    text: "K+",
                  ),
                  label: "Subscribers",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: kYoutubeVideos,
                    text: "+",
                  ),
                  label: "Videos",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: kGithubProjects,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: kGithubStars,
                    text: "K+",
                  ),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}
