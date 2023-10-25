import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({super.key, required this.percentage});
  final double percentage;

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.sizeOf(context).width;
    return AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: EdgeInsets.lerp(
            const EdgeInsets.only(left: 16, top: 20, bottom: 20),
            const EdgeInsets.only(bottom: 35, left: 12),
            1 - percentage),
        alignment: Alignment.lerp(
          Alignment.centerLeft,
          Alignment.center,
          1 - percentage,
        ),
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 225),
            padding: EdgeInsets.only(top: percentage * 43),
            width: widthScreen * 0.65 + 20 * (1 - percentage),
            child: TextField(
              onTapOutside: (event) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              style: const TextStyle(
                  fontSize: 23, fontFamily: airBnbCereal, color: Colors.white),
              decoration: InputDecoration(
                // fillColor: Colors.amber,
                // filled: true,

                border: InputBorder.none,
                prefixIconColor: Colors.white,
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  size: 25,
                ),
                contentPadding:
                    const EdgeInsets.all(20.0), // Increase content padding
                isDense: true, //
                hintText: "| Search...",

                hintStyle: TextStyle(
                    fontFamily: airBnbCereal,
                    color: Colors.white.withOpacity(0.3),
                    fontSize: 23),
              ),
            )));
  }
}
