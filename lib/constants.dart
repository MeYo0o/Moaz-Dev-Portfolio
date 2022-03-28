import 'package:flutter/material.dart';

import 'models/Project.dart';
import 'models/Recommendation.dart';

//User Related Stuff
const String kUserName = 'Moaz Ahmed';
const String kJobTitle = 'Flutter Developer';
const String kResidence = 'Egypt';
const String kCity = 'Giza';
final int kAge = DateTime.now().year - 1993;
const Map<String, double> kDevSkills = {
  'Flutter': 0.75,
  'Nodejs': 0.60,
  'Firebase': 0.70,
};
//Coding Skills
const Map<String, double> kCodingSkills = {
  'Dart': 0.75,
  'Golang': 0.45,
  'HTML': 0.70,
  'CSS': 0.70,
  'Javascript': 0.45,
};
//Knowledge : The Stuff that i know about
const List<String> kKnowledge = [
  'Flutter & Dart',
  'Golang',
  'Firebase',
  'AppWrite & Strapi',
  'Git & Github',
];
//Youtube Subscribers
const int kYoutubeSubscribersInThousands = 1;
//YouTube Videos
const int kYoutubeVideos = 10;
//Github Projects
const int kGithubProjects = 35;
//Github Starts
const int kGithubStars = 10;

//Recommendations
final List<Recommendation> kRecommendations = [
  Recommendation(
    name: "Name 1",
    source: "Linkedin",
    text: "recommendation body",
  ),
  Recommendation(
    name: "Name 2",
    source: "Linkedin",
    text: "recommendation body",
  ),
];

//Projects
List<Project> kProjects = [
  Project(
    title: "Food Delivery App with Firebase",
    description:
        "A food delivery app with firebase backend. with all the features like user registration, login, food item list, cart, order history, payment, and much more.",
  ),
  Project(
    title: "E-Commerce Complete App - Flutter UI",
    description:
        "A complete e-commerce app with firebase backend. with all the "
        "features like user "
        "registration, login, product item list, cart, order history, "
        "payment, and much more.",
  ),
];

//Colors
const kPrimaryColor = Color(0xFFFFC107);
const kSecondaryColor = Color(0xFF242430);
const kDarkColor = Color(0xFF191923);
const kBodyTextColor = Color(0xFF8B8B8D);
const kBGColor = Color(0xFF1E1E28);
//Padding
const kDefaultPadding = 20.0;
const kProjectPaddingSubtraction = 5.0;
//Durations for Animations
const kDefaultDuration = Duration(seconds: 1);
//Responsiveness Max Width : aiming 2k Screens - My Monitor Size
const kMaxWidth = 1440.0; // max width of our web
