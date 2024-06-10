import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:personal_dev_portfolio/controllers/theme_controller.dart';
import 'package:personal_dev_portfolio/core/cv.dart';
import 'package:personal_dev_portfolio/utils/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledge.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController _sc = ScrollController();
    return Drawer(
      child: SafeArea(
        child: GetBuilder<ThemeController>(
            init: Get.find<ThemeController>(),
            builder: (themeC) {
              return Column(
                children: [
                  MyInfo(),
                  Expanded(
                    child: Scrollbar(
                      controller: _sc,
                      child: SingleChildScrollView(
                        controller: _sc,
                        padding: EdgeInsets.all(kDefaultPadding),
                        child: Column(
                          children: [
                            AreaInfoText(
                              title: "Residence",
                              text: kResidence,
                            ),
                            AreaInfoText(
                              title: "City",
                              text: kCity,
                            ),
                            AreaInfoText(
                              title: "Age",
                              text: kAge.toString(),
                            ),
                            Skills(),
                            SizedBox(height: kDefaultPadding),
                            Coding(),
                            Knowledge(),
                            Divider(),
                            SizedBox(height: kDefaultPadding / 2),
                            TextButton(
                              onPressed: () async {
                                final cvUrl = CV.myCVLink;

                                final Uri url = Uri.parse(cvUrl);
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  throw 'Could not launch $cvUrl';
                                }
                              },
                              child: FittedBox(
                                child: Row(
                                  children: [
                                    Text(
                                      "DOWNLOAD CV",
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .color,
                                      ),
                                    ),
                                    SizedBox(width: kDefaultPadding / 2),
                                    SvgPicture.asset(
                                      "assets/icons/download.svg",
                                      color: themeC.darkTheme
                                          ? kIconColorDark
                                          : kIconColorLight,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: kDefaultPadding),
                              color: themeC.darkTheme
                                  ? kSecondaryColorDark
                                  : kSecondaryColorLight,
                              child: Row(
                                children: [
                                  Spacer(),
                                  IconButton(
                                    onPressed: () async {
                                      meyoUrlLauncher(kLinkedInLink);
                                    },
                                    icon: SvgPicture.asset(
                                      "assets/icons/linkedin.svg",
                                      color: themeC.darkTheme
                                          ? kIconColorDark
                                          : kIconColorLight,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      meyoUrlLauncher(kGithubLink);
                                    },
                                    icon: SvgPicture.asset(
                                      "assets/icons/github.svg",
                                      color: themeC.darkTheme
                                          ? kIconColorDark
                                          : kIconColorLight,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      meyoUrlLauncher(kTwitterLink);
                                    },
                                    icon: SvgPicture.asset(
                                      "assets/icons/twitter.svg",
                                      color: themeC.darkTheme
                                          ? kIconColorDark
                                          : kIconColorLight,
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
