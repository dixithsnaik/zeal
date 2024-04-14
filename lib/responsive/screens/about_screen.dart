import 'package:flutter/material.dart';
import 'package:zeal/global/pallet.dart';
import 'package:zeal/widget/about_container.dart';
import 'package:zeal/widget/web_footer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  const SizedBox(height: 80),
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
                  const SizedBox(height: 72),
                  const Text(
                    textAlign: TextAlign.center,
                    'Zeal Manufacturing Company is an ISO 9001-2015 certified company, specializing in sheet metal fabrication for all types of industrial requirements in light, medium, and heavy categories. We ZMC is committed to achieving sustained business excellence by integrating its quality values at all levels to anticipate, meet and exceed customer expectations and continuously improve the work to deliver the "Best in Quality Sheet Metal Products and precision machined parts" and more cost effectively than its competitors.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 52),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Who We are",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 18),
                      Text(
                        "Zeal Manufacturing Company provides",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "High precision customized Sheet Metal - Parts, assemblies.\nCNC Machined and Turned parts\nCustom Made Industrial Racks\nArchitecture Metal Manufacturing Support\nRapid Prototyping Parts - ( RPT)\nStainless Steel product & Assembly\nHeavy Engineering works\nAluminum parts and assemblies\nCertified Welding and assembly team.\nTeam of good qualified engineers for better quality and problem solving",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 18),
                      Text(
                        "Our engineering team supports clients requirement using computer aided manufacturing software to  provide more realistic view of parts and assemblies to avoid rejections which will intern save  energy and time.",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 36),
                      Text(
                        "Explore Our Product Collection",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Customised sheet metal parts manufacturing\nMachined parts\nTurned parts\nMilitary grade assemblies and Rugged enclosures.\nStainless Steel Food grade products\nAluminium consoles and milled parts\nSpecial Purpose machines\nElectrical Wiring and testing",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: aboutColor,
                    ),
                    child: const Column(
                      children: [
                        Text(
                          "OUR IMPORTS & EXPORTS",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "WE DO EXPORT TO",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "USA-TEXAS AND CALIFORNIA",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "EUROPE ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "ARAB",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "WE HAVE IMPORT FROM",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "CHINA",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "CANADA",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "EUROPE",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "SOUTH AFRICA AND",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "USA....ETC",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 62),
            const WebFooter(),
          ],
        ),
      ),
    );
  }
}
