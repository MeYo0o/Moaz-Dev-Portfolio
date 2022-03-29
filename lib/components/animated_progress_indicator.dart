import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_dev_portfolio/controllers/theme_controller.dart';

import '../core/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      init: Get.find<ThemeController>(),
      builder: (themeC) {
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: percentage),
                duration: kDefaultDuration,
                builder: (context, double value, child) => Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: value,
                      color: themeC.darkTheme
                          ? kPrimaryColorDark
                          : kPrimaryColorLight,
                      backgroundColor: themeC.darkTheme
                          ? kFadeColorDark
                          : kFadeColorLight,
                    ),
                    Center(
                      child: Text(
                        (value * 100).toInt().toString() + "%",
                        // value.toInt().toString() + "%",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding / 2),
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        );
      },
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double? percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        init: Get.find<ThemeController>(),
        builder: (themeC) {
          return Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding),
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: percentage),
              duration: kDefaultDuration,
              builder: (context, double value, child) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        label,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text((value * 100).toInt().toString() + "%"),
                    ],
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  LinearProgressIndicator(
                    value: value,
                    color: themeC.darkTheme
                        ? kPrimaryColorDark
                        : kPrimaryColorLight,
                    backgroundColor: themeC.darkTheme
                        ? kFadeColorDark
                        : kFadeColorLight,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
