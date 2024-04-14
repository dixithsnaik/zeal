import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zeal/controllers/tab_controller.dart';
import 'package:zeal/global/pallet.dart';
import 'package:zeal/responsive/screens/about_screen.dart';
import 'package:zeal/responsive/screens/facilities_screen.dart';
import 'package:zeal/responsive/screens/home_screen.dart';
import 'package:zeal/responsive/screens/products_screen.dart';
import 'package:zeal/responsive/screens/services_screen.dart';
import 'package:get/get.dart';

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({super.key});

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  final tabController = Get.find<CustomTabController>();
  final tabs = const [
    HomeScreen(),
    ProductsScreen(),
    ServicesScreen(),
    FacilitiesScreen(),
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: AppBar(
              title: Image.asset(
                "assets/images/logo.png",
                height: 40,
              ),
              centerTitle: false,
              actions: [
                Obx(
                  () => TextButton(
                    onPressed: () {
                      tabController.selectedIndex.value = 0;
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: tabController.selectedIndex.value == 0
                            ? FontWeight.bold
                            : FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => TextButton(
                    onPressed: () {
                      tabController.selectedIndex.value = 1;
                    },
                    child: Text(
                      'Products',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: tabController.selectedIndex.value == 1
                            ? FontWeight.bold
                            : FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => TextButton(
                    onPressed: () {
                      tabController.selectedIndex.value = 2;
                    },
                    child: Text(
                      'Services',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: tabController.selectedIndex.value == 2
                            ? FontWeight.bold
                            : FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => TextButton(
                    onPressed: () {
                      tabController.selectedIndex.value = 3;
                    },
                    child: Text(
                      'Facilities',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: tabController.selectedIndex.value == 3
                            ? FontWeight.bold
                            : FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => TextButton(
                    onPressed: () {
                      tabController.selectedIndex.value = 4;
                    },
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: tabController.selectedIndex.value == 4
                            ? FontWeight.bold
                            : FontWeight.w600,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 50),
              ],
              backgroundColor: Colors.white.withOpacity(0.3),
            ),
          ),
        ),
      ),
      body: Obx(() => tabs[tabController.selectedIndex.value]),
    );
  }
}
