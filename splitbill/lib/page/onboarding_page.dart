import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:splitbill/theme.dart';
import 'package:splitbill/widgets/onboarding_item.dart';

class OnboardingPage extends StatefulWidget {
  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: [
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding1.png',
                  title: 'Save your time and money',
                  subtitle:
                      'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse',
                ),
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding2.png',
                  title: 'Fast Delivery',
                  subtitle:
                      'Aliqua id fugiat nostrud irure ex duis ea\nquis id quis ad et. Sunt qui esse',
                ),
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding3.png',
                  title: 'Best Easy to share bills with anyone',
                  subtitle:
                      'Aliqua id fugiat nostrud irure ex duis ea\nquis id quis ad et. Sunt qui esse',
                ),
              ],
              options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                initialPage: currentIndex,
                onPageChanged: (index, _) {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
                },
              ),
              carouselController: controller,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    controller.animateToPage(2);
                  },
                  child: Text(
                    'SKIP',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 0 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 1 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 2 ? kBlackColor : kLineDarkColor,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    if (currentIndex == 2) {
                      Navigator.pushNamed(context, '/sign-in');
                    } else {
                      controller.nextPage();
                    }
                    controller.nextPage();
                  },
                  child: Text(
                    'NEXT',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 29,
          ),
        ],
      ),
    );
  }
}
