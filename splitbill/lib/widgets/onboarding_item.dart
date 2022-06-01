import 'package:flutter/material.dart';
import 'package:splitbill/theme.dart';

class OnboardingItem extends StatelessWidget {
  String? imageUrl;
  String? title;
  String? subtitle;

  OnboardingItem({
    this.imageUrl,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 99,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Image.asset(
            imageUrl!,
          ),
        ),
        SizedBox(
          height: 127,
        ),
        Text(
          title!,
          style: blackTextStyle.copyWith(
            fontSize: 26,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          subtitle!,
          style: greyTextStyle.copyWith(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
