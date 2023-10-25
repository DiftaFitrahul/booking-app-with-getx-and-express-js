import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';

class HeaderEventTitle extends StatelessWidget {
  const HeaderEventTitle({
    this.topPadding = 33,
    super.key,
    required this.title,
    required this.onTapped,
  });
  final String title;
  final VoidCallback onTapped;
  final double topPadding;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: EdgeInsets.only(
        top: topPadding,
        bottom: 13,
        left: 18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontFamily: airBnbCereal,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          TextButton(
              onPressed: onTapped,
              child: const Row(
                children: [
                  Text(
                    'See All',
                    style: TextStyle(
                        fontFamily: airBnbCereal,
                        fontSize: 15,
                        color: Color(0xFF747688),
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(Icons.arrow_right_sharp, color: Color(0xFF747688))
                ],
              ))
        ],
      ),
    ));
  }
}
