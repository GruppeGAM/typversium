import 'package:flutter/material.dart';

import 'presentation/cockpit/cockpit_page.dart';
import 'presentation/core/app_colors.dart';

class TypversiumApp extends StatelessWidget {
  const TypversiumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Typversium',
      theme: CRTTheme.themeData,
      home: const CockpitPage(),
    );
  }
}
