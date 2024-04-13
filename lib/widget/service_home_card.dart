import 'package:flutter/material.dart';
import 'package:zeal/global/pallet.dart';

class ServiceHomeCard extends StatelessWidget {
  final String imagePath;
  final String text;
  const ServiceHomeCard({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:  DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16),
         Text(
          text,
          style:const TextStyle(
            fontSize: 24,
            color: textColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
