import 'package:flutter/material.dart';

import '../models/Project.dart';
import '../models/Recommendation.dart';

//User Related Stuff
const String kUserName = 'Moaz Ahmed';
const String kJobTitle = 'Flutter Developer';
const String kGithubLink = 'https://github.com/MeYo0o/';
const String kTwitterLink = 'https://twitter.com/EngMeyo';
const String kLinkedInLink =
    'https://www.linkedin.com/in/moaz-ahmed-146a16b8/';
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

//Recommendations
final List<Recommendation> kRecommendations = [
  Recommendation(
    name: "Hossam M.  🇪🇬",
    source: "LinkedIn",
    text: "I was happy to work with you and I hope you will be happy too.",
  ),
  Recommendation(
    name: "Amr K. 🇸🇦",
    source: "LinkedIn",
    text: "Moaz had great ideas to help me to improve my project needs.",
  ),
  Recommendation(
    name: "Angel A.  🇪🇸",
    source: "Fiverr",
    text: "He created a website for me and I'm loving it. I'm looking "
        "forward to working with him in the future.",
  ),
  Recommendation(
    name: "Alex M.  🇬🇧",
    source: "Fiverr",
    text:
        "He helped me with my project and I am very happy with the result",
  ),
  Recommendation(
    name: "Michael S.  🇺🇸",
    source: "Fiverr",
    text:
        "He helped me with my wordpress plugin and I am very happy with the result",
  ),
  Recommendation(
    name: "Maksym Liman.  🇺🇦",
    source: "Upwork",
    text: "He is very skilled in Dart and Flutter",
  ),
];

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
    description:
        "A complete e-commerce app with firebase backend. with all the "
        "features like user "
        "registration, login, product item list, cart, order history, "
        "payment, and much more.",
    url: 'https://github.com/MeYo0o/E-Commerce-App',
  ),
  Project(
    title: "School Management System - HR",
    description:
        "Ultimate School Management System - Employer Side , Has 9 Modules ready to serve a school institution and digitalize it's work.",
    url: 'https://github.com/MeYo0o/usms-employee',
  ),
  Project(
    title: "School Job Search App",
    description:
        "Ultimate School Management System for the Candidate , can apply "
        "to the "
        "institution and once verified , can apply for a posted job and track his/her progress.",
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
    description:
        "A Categorized Meal App including (Ingredients + Vegan + Gluten Free) made with Flutter.",
    url: 'https://github.com/MeYo0o/meals_app',
  ),
  Project(
    title: "BMI Calculator",
    description: "A BMI Calculator using your Weight & Height.",
    url: 'https://github.com/MeYo0o/bmi-calculator-flutter',
  ),
  Project(
    title: "Shop App",
    description: "Cool Pokemon Shop App.",
    url: 'https://github.com/MeYo0o/shop_app',
  ),
  Project(
    title: "Personal Expenses App",
    description: "A Weekly Personal Expenses App.",
    url: 'https://github.com/MeYo0o/personal_expenses',
  ),
  Project(
    title: "Great Places",
    description: "Location Sharing App made with Flutter.",
    url: 'https://github.com/MeYo0o/great_places_app',
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
const kDefaultContainerPadding = 15.0;
const kProjectPaddingSubtraction = 5.0;
//Durations for Animations
const kDefaultDuration = Duration(seconds: 1);
//Responsiveness Max Width : aiming 2k Screens - My Monitor Size
const kMaxWidth = 1440.0; // max width of our web
