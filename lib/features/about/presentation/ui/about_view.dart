import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:timeline_tile/timeline_tile.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: SizedBox(
        width: double.infinity,
        child: isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildImageSection(),
                  const Gap(20),
                  _buildInfoSection(context, isMobile),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: _buildImageSection()),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: _buildInfoSection(context, isMobile),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildImageSection() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          'assets/images/about-me.jpeg',
          width: 350,
          height: 400,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildInfoSection(BuildContext context, bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('About Me', style: Theme.of(context).textTheme.labelMedium),
        const Gap(10),
        Text(
          "Self-motivated Flutter Developer with a year experience building user-friendly applications for both Android and iOS platforms. Strong collaborator with UI/UX team and backend developers to deliver seamless user experience. With a strong focus on code cleanliness and performance optimization, I keep seeking opportunities to learn new technologies and improve my development.",
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Gap(20),
        Text('Education', style: Theme.of(context).textTheme.labelMedium),
        const Gap(10),
        SizedBox(
          height: isMobile ? 220 : 260,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              buildTimelineTile(
                isFirst: true,
                isLast: false,
                title: 'Higher National Diploma in Computing',
                points: ['Pearson', '2019 - 2022'],
              ),
              buildTimelineTile(
                isFirst: false,
                isLast: true,
                title: 'Bachelor of Science in Computer Science',
                points: ['University of Sunderland', '2024'],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildTimelineTile({
    required bool isFirst,
    required bool isLast,
    required String title,
    required List<String> points,
  }) {
    return TimelineTile(
      alignment: TimelineAlign.start,
      lineXY: 0.1,
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: IndicatorStyle(
        width: 10,
        color: AppColor.kPrimaryColor,
        padding: const EdgeInsets.all(6),
        indicatorXY: 0,
      ),
      beforeLineStyle: const LineStyle(
        color: AppColor.kWhite,
        thickness: 2,
      ),
      afterLineStyle: const LineStyle(
        color: AppColor.kWhite,
        thickness: 2,
      ),
      endChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ...points.map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('• ', style: TextStyle(fontSize: 14)),
                  Expanded(
                    child: Text(
                      e,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
