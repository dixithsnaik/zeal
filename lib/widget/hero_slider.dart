import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zeal/global/image_url_hero.dart';
import 'package:zeal/global/pallet.dart';

class HeroSlider extends StatefulWidget {
  const HeroSlider({super.key});

  @override
  State<HeroSlider> createState() => _HeroSliderState();
}

class _HeroSliderState extends State<HeroSlider> {
  int _activeIndex = 0;
  final carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: carouselController,
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            return ImageSlider(
              image: urlImages[index],
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 6,
            viewportFraction: 0.9,
            initialPage: 0,
            onPageChanged: (index, reason) {
              setState(() {
                _activeIndex = index;
              });
            },
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: SliderIndicator(activeIndex: _activeIndex),
        ),
        Positioned(
          left: 100,
          top: 0,
          bottom: 0,
          child: InkWell(
            onTap: () {
              if (_activeIndex == 0){
                _activeIndex = urlImages.length - 1;
              }
                _activeIndex--;
              carouselController.previousPage();
            },
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: const BoxDecoration(
                color: whiteColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/left.png",
                  height: 40,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 100,
          top: 0,
          bottom: 0,
          child: InkWell(
            onTap: () {
              if (_activeIndex == urlImages.length - 1){
                _activeIndex = 0;
              }
              _activeIndex++;
              carouselController.nextPage();
            },
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: const BoxDecoration(
                color: whiteColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/right.png",
                  height: 40,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ImageSlider extends StatelessWidget {
  final String image;
  const ImageSlider({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

class SliderIndicator extends StatelessWidget {
  final int activeIndex;
  const SliderIndicator({
    super.key,
    required this.activeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        urlImages.length,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: activeIndex == index ? 32 : 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
