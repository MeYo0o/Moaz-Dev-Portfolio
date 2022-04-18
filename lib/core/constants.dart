import 'package:flutter/material.dart';

import '../models/Project.dart';

//User Related Stuff
const String kUserName = 'Moaz Ahmed';
const String kJobTitle = 'Flutter Developer';
const String kGithubLink = 'https://github.com/MeYo0o/';
const String kTwitterLink = 'https://twitter.com/EngMeyo';
const String kLinkedInLink = 'https://www.linkedin.com/in/moaz-ahmed-146a16b8/';
const String kResidence = 'Egypt';
const String kCity = 'Giza';
const int _birthYear = 1993;
final int kAge = DateTime.now().year - _birthYear;
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

//Projects
List<Project> kProjects = [
  Project(
    title: "Food Delivery App with Firebase",
    description:
        "A food delivery app with firebase backend. with all the features like user registration, login, food item list, cart, order history, payment, and much more.",
    url: 'https://github.com/MeYo0o/foody/',
  ),
  Project(
    title: "E-Commerce Complete App - Flutter UI",
    description: "A complete e-commerce app with firebase backend. with all the "
        "features like user "
        "registration, login, product item list, cart, order history, "
        "payment, and much more.",
    url: 'https://github.com/MeYo0o/E-Commerce-App',
  ),
  Project(
    title: "USMS - Organization",
    description:
        "Ultimate School Management System - Employer Side , Has 9 Modules ready to serve a school institution and digitalize it's work.",
    url: 'https://github.com/MeYo0o/usms-employee',
  ),
  Project(
    title: "USMS - Candidate",
    description:
        "Ultimate School Management System - Employee Side , can apply to the institution and once verified , can apply for a posted job and track his/her progress.",
    url: 'https://github.com/MeYo0o/usms-system',
  ),
  Project(
    title: "Payment Gateway UI",
    description:
        "This is only UI for the Payment Gateway App that i'm working on, with Translations and dynamic themes.",
    url: 'https://github.com/MeYo0o/Payment-Gateway-UI',
  ),
  Project(
    title: "Meals App",
    description: "Great way to categorize your meals into multiple variates.",
    url: 'https://github.com/MeYo0o/meals_app',
  ),
  Project(
    title: "Shop App",
    description: "This Shop App is a connection between multiple vendors and clients.",
    url: 'https://github.com/MeYo0o/shop_app',
  ),
  Project(
    title: "Great Places App",
    description:
        "Share your beautiful moments with others using location based pictures of the places you visit.",
    url: 'https://github.com/MeYo0o/great_places_app',
  ),
  Project(
    title: "Personal Expenses App",
    description: "Manage your weekly Expenses.",
    url: 'https://github.com/MeYo0o/personal_expenses',
  ),
  Project(
    title: "Chat App",
    description: "Simple Chat App to test Firebase Capabilities.",
    url: 'https://github.com/MeYo0o/chat_app',
  ),
  Project(
    title: "Weather App",
    description:
        "Weather app for your current location and also searched locations with beautiful looking UI.",
    url: 'https://github.com/MeYo0o/Clima-Flutter',
  ),
  Project(
    title: "Ask the Magic 8 Ball",
    description: "ASk it any Questions and it will give you random answers.",
    url: 'https://github.com/MeYo0o/magic-8-ball-flutter',
  ),
  Project(
    title: "Dice Decider",
    description: "Instead of Rock,Paper&Scissors Try this one!.",
    url: 'https://github.com/MeYo0o/dicee-flutter',
  ),
  Project(
    title: "Quiz App",
    description: "Simple Quiz App and see your results at the end.",
    url: 'https://github.com/MeYo0o/quizapp',
  ),
];

//Colors
//Dark
const kPrimaryColorDark = Color(0xFFFFC107);
const kSecondaryColorDark = Color(0xFF242430);
const kFadeColorDark = Color(0xFF191923);
const kBodyTextColorDark = Color(0xFF8B8B8D);
const kBGColorDark = Color(0xFF1E1E28);
const kIconColorDark = Colors.white;

//Light
const kPrimaryColorLight = Color(0xFFFFC107);
const kSecondaryColorLight = Color(0xFF96624A);
const kFadeColorLight = Color(0xFF8A5A44);
const kBodyTextColorLight = Color(0xFFF7E6DE);
const kBGColorLight = Color(0xFF774936);
const kIconColorLight = Colors.white;

//Padding
const kDefaultPadding = 20.0;
const kProjectPaddingSubtraction = 5.0;
//Durations for Animations
const kDefaultDuration = Duration(seconds: 1);
//Responsiveness Max Width : aiming 2k Screens - My Monitor Size
const kMaxWidth = 1440.0; // max width of our web
