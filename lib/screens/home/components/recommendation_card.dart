import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_dev_portfolio/controllers/theme_controller.dart';

import '../../../core/constants.dart';
import '../../../models/Recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        init: Get.find<ThemeController>(),
        builder: (themeC) {
          return Container(
            width: 400,
            padding: EdgeInsets.all(kDefaultPadding),
            color: themeC.darkTheme
                ? kSecondaryColorDark
                : kSecondaryColorLight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recommendation.name!,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(recommendation.source!),
                const SizedBox(height: kDefaultPadding),
                Text(
                  recommendation.text!,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(height: 1.5),
                )
              ],
            ),
          );
        });
  }
}
