import 'package:flutter/material.dart';
import 'package:flutter_layout/home_page.dart';
import 'package:flutter_layout/pages/screens/desktop_Scaffold.dart';
import 'package:flutter_layout/pages/screens/mobile_Scaffold.dart';
import 'package:flutter_layout/pages/screens/tablet_Scaffold.dart';
import 'package:flutter_layout/responsive/responsive_layout.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ResponsiveLayout(
            mobileScaffold: MobileScaffold(),
            tabletScaffold: TabletScaffold(),
            desktopScaffold: DesktopScaffold()));
  }
}
