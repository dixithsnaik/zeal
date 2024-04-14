import 'package:flutter/material.dart';
import 'package:zeal/controllers/tab_controller.dart';

import 'package:zeal/global/pallet.dart';
import 'package:zeal/widget/about_container.dart';
import 'package:zeal/widget/hero_slider.dart';
import 'package:zeal/widget/service_home_card.dart';
import 'package:zeal/widget/web_footer.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final tabControllre = Get.find<CustomTabController>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),
                   HeroSlider(),
                  const SizedBox(height: 50),
                  const Text(
                    "Zeal Manufacturing Company",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 36),
                  const AboutContainer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.12)
                        .copyWith(top: 100),
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Zeal Manufacturing Company is an ISO 9001-2015 certified company, specializing in sheet metal fabrication forall types of industrial requirements in light, medium, and heavy categories.",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                        color: textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 36),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(buttonColor),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Read More",
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 62),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Areas of Service",
                        style: TextStyle(
                          fontSize: 28,
                          color: textColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          if (constraints.maxWidth > 1300) {
                            return GridView.count(
                              childAspectRatio: 13 / 17,
                              crossAxisCount: 4,
                              shrinkWrap: true,
                              crossAxisSpacing: 16,
                              children: const [
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/defence.png",
                                    text: "Defense Sector"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/hydrolics.png",
                                    text: "Industrial Hydraulics"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/medical.png",
                                    text: "Medical Electronics"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/airports.png",
                                    text: "Infrastructure-Airports"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/food.png",
                                    text: "Food Industry"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/architecture.png",
                                    text: "Architecture"),
                              ],
                            );
                          } else if (constraints.maxWidth > 1000) {
                            return GridView.count(
                              childAspectRatio: 1.7 / 4,
                              crossAxisCount: 4,
                              shrinkWrap: true,
                              crossAxisSpacing: 16,
                              children: const [
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/defence.png",
                                    text: "Defense Sector"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/hydrolics.png",
                                    text: "Industrial Hydraulics"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/medical.png",
                                    text: "Medical Electronics"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/airports.png",
                                    text: "Infrastructure-Airports"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/food.png",
                                    text: "Food Industry"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/architecture.png",
                                    text: "Architecture"),
                              ],
                            );
                          } else if (constraints.maxWidth > 950) {
                            return GridView.count(
                              childAspectRatio: 2 / 4,
                              crossAxisCount: 4,
                              shrinkWrap: true,
                              crossAxisSpacing: 16,
                              children: const [
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/defence.png",
                                    text: "Defense Sector"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/hydrolics.png",
                                    text: "Industrial Hydraulics"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/medical.png",
                                    text: "Medical Electronics"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/airports.png",
                                    text: "Infrastructure-Airports"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/food.png",
                                    text: "Food Industry"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/architecture.png",
                                    text: "Architecture"),
                              ],
                            );
                          } else if (constraints.maxWidth > 850) {
                            return GridView.count(
                              childAspectRatio: 2 / 4,
                              crossAxisCount: 3,
                              shrinkWrap: true,
                              crossAxisSpacing: 16,
                              children: const [
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/defence.png",
                                    text: "Defense Sector"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/hydrolics.png",
                                    text: "Industrial Hydraulics"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/medical.png",
                                    text: "Medical Electronics"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/airports.png",
                                    text: "Infrastructure-Airports"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/food.png",
                                    text: "Food Industry"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/architecture.png",
                                    text: "Architecture"),
                              ],
                            );
                          } else if (constraints.maxWidth < 600) {
                            return GridView.count(
                              childAspectRatio: 13 / 17,
                              crossAxisCount: 2,
                              shrinkWrap: true,
                              crossAxisSpacing: 16,
                              children: const [
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/defence.png",
                                    text: "Defense Sector"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/hydrolics.png",
                                    text: "Industrial Hydraulics"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/medical.png",
                                    text: "Medical Electronics"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/airports.png",
                                    text: "Infrastructure-Airports"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/food.png",
                                    text: "Food Industry"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/architecture.png",
                                    text: "Architecture"),
                              ],
                            );
                          } else {
                            return GridView.count(
                              childAspectRatio: 13 / 17,
                              crossAxisCount: 2,
                              shrinkWrap: true,
                              crossAxisSpacing: 16,
                              children: const [
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/defence.png",
                                    text: "Defense Sector"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/hydrolics.png",
                                    text: "Industrial Hydraulics"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/medical.png",
                                    text: "Medical Electronics"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/airports.png",
                                    text: "Infrastructure-Airports"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/food.png",
                                    text: "Food Industry"),
                                ServiceHomeCard(
                                    imagePath:
                                        "assets/images/services/architecture.png",
                                    text: "Architecture"),
                              ],
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            const WebFooter(),
          ],
        ),
      ),
    );
  }
}
