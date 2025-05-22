import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/features/project/data/model/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel project;
  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    double cardWidth;
    if (screenWidth < 600) {
      cardWidth = screenWidth * 0.9; 
    } else if (screenWidth < 1024) {
      cardWidth = screenWidth * 0.45; 
    } else {
      cardWidth = 300; 
    }

    return SizedBox(
      width: cardWidth,
      child: Card(
        elevation: 6,
        color: AppColor.kCardBG,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      project.image,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      project.name,
                      softWrap: true,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                project.description,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 12),
              Text('Tech used:'),
              const SizedBox(height: 6),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: project.tech
                    .map(
                      (tech) => ClipOval(
                        child: Image.asset(
                          tech,
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 12),
              project.isPublished
                  ? Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: project.isMobile
                          ? _buildMobileButtons(context, project.host)
                          : _buildLiveButton(context, project.host),
                    )
                  : const Text('Not published yet.'),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildMobileButtons(BuildContext context, List<String> hosts) {
    return [
      if (hosts.isNotEmpty)
        _buildStoreButton(
          context,
          label: 'App Store',
          url: hosts[0],
        ),
      if (hosts.length > 1)
        _buildStoreButton(
          context,
          label: 'Play Store',
          url: hosts[1],
        ),
    ];
  }

  List<Widget> _buildLiveButton(BuildContext context, List<String> hosts) {
    return [
      if (hosts.isNotEmpty)
        _buildStoreButton(
          context,
          label: 'Live',
          url: hosts[0],
        ),
    ];
  }

  Widget _buildStoreButton(BuildContext context,
      {required String label, required String url}) {
    return TextButton(
      onPressed: () async {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } else {
          throw 'Could not launch $url';
        }
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColor.kWhite),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppColor.kBGColor,
            ),
      ),
    );
  }
}
