import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_dev_portfolio/controllers/theme_controller.dart';
import 'package:personal_dev_portfolio/utils/url_launcher.dart';

import '../../../core/constants.dart';
import '../../../core/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        init: Get.find<ThemeController>(),
        builder: (themeC) {
          return AspectRatio(
            aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  "assets/images/bg4.jpg",
                  fit: BoxFit.cover,
                ),
                Container(
                  color: themeC.darkTheme
                      ? kFadeColorDark.withOpacity(0.50)
                      : kFadeColorLight.withOpacity(0.50),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Discover my Amazing \nArt Space!",
                        style: Responsive.isDesktop(context)
                            ? Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )
                            : Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                      ),
                      SizedBox(height: kDefaultPadding),
                      if (Responsive.isMobileLarge(context))
                        const SizedBox(height: kDefaultPadding / 2),
                      MyBuildAnimatedText(),
                      SizedBox(height: kDefaultPadding),
                      if (!Responsive.isMobileLarge(context))
                        ElevatedButton(
                          onPressed: () async {
                            await meyoUrlLauncher(kGithubLink);
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: kDefaultPadding * 2,
                              vertical: kDefaultPadding,
                            ),
                            backgroundColor: kPrimaryColorDark,
                          ),
                          child: Text(
                            "EXPLORE NOW",
                            style: TextStyle(color: kFadeColorDark),
                          ),
                        ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.titleMedium!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: kDefaultPadding / 2),
          Text("I build "),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: kDefaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "Real World Responsive Cross-Platform Applications. [Desktop, Web & Mobile]",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Food Delivery app with Driver Location Tracking App [Tiptop]",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Social Media / Work Platform App [CVme]",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Learning Courses App [All Academy]",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Payment Gateway app [Wakty]",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: kPrimaryColorDark),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
