import 'package:flutter/material.dart';
import 'package:portfolio/features/about/presentation/ui/about_view.dart';
import 'package:portfolio/features/experience/presentation/ui/experience_view.dart';
import 'package:portfolio/features/project/presentation/ui/project_view.dart';
import 'package:portfolio/features/welcome/presentation/ui/welcome_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // double contentWidth;
    // if (ResponsiveBreakpoints.of(context).isDesktop) {
    //   contentWidth = 1000;
    // } else if (ResponsiveBreakpoints.of(context).isTablet) {
    //   contentWidth = 800;
    // } else {
    //   contentWidth = screenWidth * 0.95;
    // }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 20, horizontal: screenWidth * 0.06),
          child: Center(
            child: SizedBox(
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: const [
                  WelcomeView(),
                  AboutView(),
                  ExperienceView(),
                  ProjectView(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
