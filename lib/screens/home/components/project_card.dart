import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_dev_portfolio/controllers/theme_controller.dart';
import 'package:personal_dev_portfolio/utils/url_launcher.dart';

import '../../../core/constants.dart';
import '../../../models/Project.dart';
import '../../../core/responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        init: Get.find<ThemeController>(),
        builder: (themeC) {
          return InkWell(
            onTap: () async => await meyoUrlLauncher(project.url),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              color: themeC.darkTheme ? kSecondaryColorDark : kSecondaryColorLight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Spacer(),
                  Text(
                    project.description,
                    maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(height: 1.45),
                  ),
                  Spacer(),
                  Text(
                    "Read More >>",
                    style: TextStyle(color: kPrimaryColorDark),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
