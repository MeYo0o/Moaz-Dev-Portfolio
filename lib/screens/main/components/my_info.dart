import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_dev_portfolio/core/constants.dart';
import 'package:personal_dev_portfolio/controllers/theme_controller.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      init: Get.find<ThemeController>(),
      builder: (themeC) {
        return AspectRatio(
          //change this with respect to the Aligned Theme Button
          aspectRatio: 1.23,
          child: Container(
            color: themeC.darkTheme ? kSecondaryColorDark : kSecondaryColorLight,
            child: Column(
              children: [
                // Align(
                //   alignment: Alignment.topRight,
                //   child: IconButton(
                //     onPressed: () {
                //       themeC.toggleTheme();
                //     },
                //     icon: Icon(
                //       themeC.darkTheme
                //           ? FontAwesomeIcons.solidSun
                //           : FontAwesomeIcons.moon,
                //       color: themeC.darkTheme
                //           ? kIconColorDark
                //           : kIconColorLight,
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/profile-pic.jpg"),
                ),
                Spacer(),
                Text(
                  kUserName,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  kJobTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    height: 1.5,
                  ),
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
        );
      },
    );
  }
}
