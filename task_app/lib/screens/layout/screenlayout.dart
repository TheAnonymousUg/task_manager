import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:task_app/screens/mobile/mobilescreen.dart';
import 'package:task_app/screens/web/webscreen.dart';

class ScreenLayout extends StatelessWidget {
  const ScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints:
          const ScreenBreakpoints(desktop: 900, tablet: 600, watch: 300),
      mobile: const MobileScreen(),
      desktop: const WebScreen(),
      tablet: const MobileScreen(),
    );
  }
}
