import 'package:flutter/material.dart';
import 'package:portfolio/features/experience/presentation/ui/widget/experience_card.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    // Card width: full on mobile, clamped on larger screens
    final cardWidth =
        isMobile ? screenWidth - 40 : (screenWidth / 3).clamp(250.0, 400.0);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Work Experience',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 20,
              children: List.generate(1, (index) {
                return SizedBox(
                  width: cardWidth,
                  child: const ExperienceCard(),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
