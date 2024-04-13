import 'package:flutter/material.dart';
import 'package:zeal/global/pallet.dart';

class AboutContainer extends StatelessWidget {
  const AboutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 450,
          width: size.width * 0.75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage(
                "assets/images/about_image.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: -50,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "From Imagination to Innovation",
                  style: TextStyle(
                    fontSize: 34,
                    color: blackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "We Craft the Hardware You Dream Of",
                  style: TextStyle(
                    fontSize: 28,
                    color: blackColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
