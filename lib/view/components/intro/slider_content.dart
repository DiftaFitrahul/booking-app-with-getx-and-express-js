import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';

class SliderContent extends StatelessWidget {
  final String title;
  final String subtitle;
  const SliderContent({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: airBnbCereal,
            fontSize: screenHeight < 800
                ? 20
                : screenHeight < 880
                    ? 25
                    : 27,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: airBnbCereal,
            color: Colors.white,
            fontSize: screenHeight < 800
                ? 13
                : screenHeight < 880
                    ? 15
                    : 17,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
