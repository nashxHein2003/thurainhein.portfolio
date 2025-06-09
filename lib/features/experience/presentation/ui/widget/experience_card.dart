import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/features/experience/data/experience_data.dart';
import 'package:portfolio/features/experience/data/model/experience_model.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    final project = projects.elementAt(index);
    return Card(
      elevation: 6,
      color: AppColor.kCardBG,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 12 : 20),
        child: SizedBox(
          height: 250,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              _buildHeaderRow(context, project),
              const SizedBox(height: 12),
              Text(
                project.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Spacer(),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildTechChip(context, "Flutter"),
                  _buildTechChip(context, "Dart"),
                ],
              ),
            ],
          ),
        ),
      ),
    );

    // return FlipCard(
    //   front: Card(
    //     elevation: 6,
    //     color: AppColor.kCardBG,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(16),
    //     ),
    //     child: Padding(
    //       padding: EdgeInsets.all(isMobile ? 12 : 20),
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         spacing: 12,
    //         children: [
    //           _buildHeaderRow(context, project),
    //           const SizedBox(height: 12),
    //           Text(
    //             project.description,
    //             style: Theme.of(context).textTheme.bodyMedium,
    //           ),
    //           Wrap(
    //             spacing: 8,
    //             runSpacing: 8,
    //             children: [
    //               _buildTechChip(context, "Flutter"),
    //               _buildTechChip(context, "Dart"),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    //   back: SizedBox(),
    //   back: Card(
    //     elevation: 6,
    //     color: AppColor.kCardBG,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(16),
    //     ),
    //     child: Padding(
    //       padding: EdgeInsets.all(isMobile ? 10 : 16),
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(
    //             "What I did in this project:",
    //             style: Theme.of(context).textTheme.bodyLarge,
    //           ),
    //           const SizedBox(height: 8),
    //           ...[
    //             "Developed and deployed a secure, user-friendly Flutter app with user identification and profile data.",
    //             "Enhanced features for Android and iOS to improve functionality and user experience.",
    //             "Collaborated with UI/UX designers and backend developers.",
    //             "Refactored code to improve readability, maintainability, and performance.",
    //             "Deployed apps to Google Play Store and Apple App Store.",
    //           ].map(_buildBullet),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

  Widget _buildHeaderRow(BuildContext context, ExperienceModel project) {
    return Row(
      spacing: 12,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(project.image),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(project.name, style: Theme.of(context).textTheme.bodyLarge),
              Text(
                project.company,
                softWrap: true,
              ),
            ],
          ),
        ),
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

  // Widget _buildBullet(String text) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 4),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         const Text("• ", style: TextStyle(color: Colors.white, fontSize: 16)),
  //         Expanded(
  //           child: Text(
  //             text,
  //             style: const TextStyle(color: Colors.white, fontSize: 14),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
