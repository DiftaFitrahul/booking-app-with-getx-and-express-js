import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';

class HeaderEventTitle extends StatelessWidget {
  const HeaderEventTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
      padding: const EdgeInsets.only(
        top: 33,
        bottom: 13,
        left: 18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Upcoming Events',
            style: TextStyle(
                fontFamily: airBnbCereal,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          TextButton(
              onPressed: () {},
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