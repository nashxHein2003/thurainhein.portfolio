import 'package:portfolio/features/project/data/model/project_model.dart';

final List<Project> projects = [
  Project(
    name: "GX Market",
    company: "By Grumman Investment Holdings Limited",
    description:
        "GX Market is a Flutter application built with Provider state management. It keeps users informed of the markets in real-time, enabling efficient and effective trading decisions.",
    imagePath: 'assets/images/logo.png',
    techs: [
      'assets/images/icons/flutter-icon.png',
      'assets/images/icons/dart-icon.png'
    ],
    tasks: [
      "Developed and deployed a secure, user-friendly Flutter app with user identification and profile data.",
      "Enhanced features for Android and iOS to improve functionality and user experience.",
      "Collaborated with UI/UX designers and backend developers.",
      "Refactored code to improve readability, maintainability, and performance.",
      "Deployed apps to Google Play Store and Apple App Store.",
    ],
  ),
];

final List<ProjectModel> projectList = [
  ProjectModel(
    name: 'GX Market',
    description:
        "GX Market is a Flutter application built with Provider state management. It keeps users informed of the markets in real-time, enabling efficient and effective trading decisions.",
    tech: [
      'assets/images/icons/flutter-icon.png',
      'assets/images/icons/dart-icon.png'
    ],
    isMobile: true,
    isPublished: true,
    host: [
      'https://apps.apple.com/th/app/gx-markets/id6478516951',
      'https://play.google.com/store/apps/detailsid=com.grummanexchange.gxmarkets&pcampaignid=web_share'
    ],
    image: 'assets/images/logo.png',
    isVisibleRepo: false,
    repoLink: '',
  ),
  ProjectModel(
    name: 'SSID Mobile',
    description:
        "A secure SSID service enabling users to access multiple applications with a single user ID and password. Users can update personal details like avatar and reset passwords seamlessly.",
    tech: [
      'assets/images/icons/flutter-icon.png',
      'assets/images/icons/dart-icon.png'
    ],
    isMobile: true,
    isPublished: false,
    host: [],
    image: 'assets/images/icons/flutter-icon.png',
    isVisibleRepo: false,
    repoLink: '',
  ),
  ProjectModel(
    name: 'Shaped Widget Package',
    description:
        "Shaped Widget Package is a dart package that contains different shapes of widgets. It is customizable and saves time for users when creating various shape of widgets in flutter.",
    tech: [
      'assets/images/icons/flutter-icon.png',
      'assets/images/icons/dart-icon.png'
    ],
    isMobile: false,
    isPublished: true,
    host: ['https://pub.dev/packages/shaped_widget'],
    image: 'assets/images/icons/dart-icon.png',
    isVisibleRepo: true,
    repoLink: 'https://github.com/nashxHein2003/shaped-widget',
  ),
  ProjectModel(
    name: 'Century Art',
    description:
        "Century Art is art platform website for artists and art enjoyers, built for my bachelor project. It allows artists and art creators to keep their artwork in their profile and show them off.",
    tech: ['assets/images/icons/react-icon.jpg'],
    isMobile: false,
    isPublished: true,
    host: ['https://cet-300-art-platform.vercel.app/'],
    image: 'assets/images/century-icon.png',
    isVisibleRepo: true,
    repoLink: 'https://github.com/nashxHein2003/CET-300_art-platform',
  ),
  ProjectModel(
    name: 'Baby Care',
    description:
        "BabyCare is an android application for mothers to keep a note of things, built for my bachelor project. It allows them to add items to purchase and after buying them, item list can be removed. ",
    tech: ['assets/images/icons/java-icon.png'],
    isMobile: true,
    isPublished: false,
    host: [],
    image: 'assets/images/babycare-icon.png',
    isVisibleRepo: true,
    repoLink: 'https://github.com/nashxHein2003/baby-care-app',
  ),
  ProjectModel(
    name: 'Tools For You',
    description:
        "Tools For You is a Flutter web application that will include calculation tools, etc. It focuses for mobile usage. It is currently under development. There are only two tools available now.",
    tech: [
      'assets/images/icons/flutter-icon.png',
      'assets/images/icons/dart-icon.png',
      'assets/images/icons/riverpod-icon.png'
    ],
    isMobile: false,
    isPublished: true,
    host: ['https://tools-for-you-2025.web.app/'],
    image: 'assets/images/icons/flutter-icon.png',
    isVisibleRepo: true,
    repoLink: 'https://github.com/nashxHein2003/tools-for-you',
  )
];
