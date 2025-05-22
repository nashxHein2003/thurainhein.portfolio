import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_text.dart';
import 'package:responsive_framework/responsive_framework.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Padding(
        padding: ResponsiveBreakpoints.of(context).isMobile
            ? const EdgeInsets.symmetric(horizontal: 20)
            : EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Thu Rain Hein',
              style: ResponsiveTextStyle.titleLarge(context),
            ),
            Text(
              'Flutter Developer/ Mobile Developer',
              style: ResponsiveTextStyle.bodyLarge(context),
            )
          ],
        ),
      ),
    );
  }
}
