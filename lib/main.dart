import 'package:flutter/material.dart';
import 'package:judith_onwumere/pages/desktop_scaffold.dart';
import 'package:judith_onwumere/pages/mobile_scaffold.dart';
import 'package:judith_onwumere/pages/tablet_scaffold.dart';
import 'package:judith_onwumere/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Judith Onwumere | UI/UX Designer',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ResponsiveLayout(
          mobileScaffold: MobileScaffold(),
          tabletScaffold: TabletScaffold(),
          desktopScaffold: DesktopScaffold(),
        ));
  }
}
