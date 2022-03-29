import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants.dart';

class ThemeController extends GetxController {
  bool darkTheme = true;

  void toggleTheme() {
    darkTheme = !darkTheme;
    update();
  }

  ThemeData getTheme(BuildContext context) {
    return darkTheme
        ? ThemeData.dark().copyWith(
            primaryColor: kPrimaryColorDark,
            scaffoldBackgroundColor: kBGColorDark,
            canvasColor: kBGColorDark,
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                    .apply(bodyColor: Colors.white)
                    .copyWith(
                      bodyText1: TextStyle(color: kBodyTextColorDark),
                      bodyText2: TextStyle(color: kBodyTextColorDark),
                    ),
          )
        : ThemeData.light().copyWith(
            primaryColor: kPrimaryColorLight,
            scaffoldBackgroundColor: kBGColorLight,
            canvasColor: kBGColorLight,
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                    .apply(bodyColor: Colors.white)
                    .copyWith(
                      bodyText1: TextStyle(color: kBodyTextColorLight),
                      bodyText2: TextStyle(color: kBodyTextColorLight),
                    ),
          );
  }
}
