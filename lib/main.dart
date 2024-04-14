import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeal/all_bindings.dart';
import 'package:zeal/controllers/navigator_controller.dart';
import 'package:zeal/responsive/mobile_screen_layout.dart';
import 'package:zeal/responsive/responsive_layout.dart';
import 'package:zeal/responsive/web_screen_layout.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AllBindings(),
      title: 'Zeal Manufacturing',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        useMaterial3: true,
      ),
      initialRoute: "/",
      onGenerateRoute: NavigationController.onGenerateRoute,
    );
  }
}
