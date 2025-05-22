import 'package:flutter/material.dart';
import 'package:portfolio/features/project/data/project_data.dart';
import 'package:portfolio/features/project/presentation/ui/widget/project_card.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final horizontalPadding = screenWidth < 600
        ? 16.0
        : screenWidth < 1024
            ? 40.0
            : 100.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Projects',
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: 20),
        Container(
          //width: screenWidth,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Center(
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: projectList
                  .map((project) => ProjectCard(project: project))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
