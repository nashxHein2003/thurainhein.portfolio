import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_color.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return FlipCard(
      front: Card(
        elevation: 6,
        color: AppColor.kCardBG,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.all(isMobile ? 12 : 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isMobile ? _buildHeaderColumn(context) : _buildHeaderRow(context),
              const SizedBox(height: 12),
              Text(
                'GX Market is a Flutter application built with Provider state management. It keeps users informed of the markets in real-time, enabling efficient and effective trading decisions.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildTechChip(context, "Flutter"),
                  _buildTechChip(context, "Dart"),
                ],
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
      back: Card(
        elevation: 6,
        color: AppColor.kCardBG,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.all(isMobile ? 10 : 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What I did in this project:",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 8),
              ...[
                "Developed and deployed a secure, user-friendly Flutter app with user identification and profile data.",
                "Enhanced features for Android and iOS to improve functionality and user experience.",
                "Collaborated with UI/UX designers and backend developers.",
                "Refactored code to improve readability, maintainability, and performance.",
                "Deployed apps to Google Play Store and Apple App Store.",
              ].map(_buildBullet),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderRow(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/logo.png'),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("GX Market", style: Theme.of(context).textTheme.bodyLarge),
            const Text("By Grumman Investment Holdings Limited"),
          ],
        ),
      ],
    );
  }

  Widget _buildHeaderColumn(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/logo.png'),
        ),
        const SizedBox(height: 8),
        Text("GX Market", style: Theme.of(context).textTheme.bodyLarge),
        const Text("By Grumman Investment Holdings Limited"),
      ],
    );
  }

  Widget _buildTechChip(BuildContext context, String label) {
    return Chip(
      label: Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      color: WidgetStatePropertyAll(AppColor.kBGColor),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppColor.kPrimaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _buildBullet(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(color: Colors.white, fontSize: 16)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
