import 'package:portfolio/features/experience/data/model/experience_model.dart';

final List<ExperienceModel> projects = [
  ExperienceModel(
    name: "GX Market",
    company: "By Grumman Investment Holdings Limited",
    description:
        "GX Market is a Flutter application built with Provider state management. It keeps users informed of the markets in real-time, enabling efficient and effective trading decisions.",
    image: 'assets/images/logo.png',
    tech: [
      'assets/images/icons/flutter-icon.png',
      'assets/images/icons/dart-icon.png'
    ],
    note: [
      "Developed and deployed a secure, user-friendly Flutter app with user identification and profile data.",
      "Enhanced features for Android and iOS to improve functionality and user experience.",
      "Collaborated with UI/UX designers and backend developers.",
      "Refactored code to improve readability, maintainability, and performance.",
      "Deployed apps to Google Play Store and Apple App Store.",
    ],
  ),
  ExperienceModel(
    name: "SSID Application",
    company: "By Grumman Investment Holdings Limited",
    description:
        "SSID application is a Flutter application that enables user to access multiple application with a single user id and passord.",
    image: 'assets/images/icons/flutter-icon.png',
    tech: [
      'assets/images/icons/flutter-icon.png',
      'assets/images/icons/dart-icon.png'
    ],
    note: [],
  ),
];
