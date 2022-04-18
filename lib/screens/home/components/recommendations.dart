import 'package:flutter/material.dart';
import 'package:personal_dev_portfolio/screens/home/components/recommendation_card.dart';
import '../../../core/constants.dart';
import '../../../core/recommendations.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _sc = ScrollController();
    return Padding(
      padding: const EdgeInsets.only(
        top: kDefaultPadding,
        bottom: kDefaultPadding,
        right: kDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: kDefaultPadding),
          SizedBox(
            height: 150,
            width: double.infinity,
            child: Scrollbar(
              controller: _sc,
              isAlwaysShown: true,
              thickness: 5,
              child: ListView.separated(
                controller: _sc,
                scrollDirection: Axis.horizontal,
                itemCount: kRecommendations.length,
                itemBuilder: (context, index) => RecommendationCard(
                  recommendation: kRecommendations[index],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  width: kDefaultPadding,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
