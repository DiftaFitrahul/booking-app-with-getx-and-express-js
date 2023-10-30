import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';

class NavBarOrganizerProfile extends StatelessWidget {
  const NavBarOrganizerProfile(
      {super.key,
      required this.isSelected,
      required this.onTapped,
      required this.title,
      required this.widthLine});
  final bool isSelected;
  final VoidCallback onTapped;
  final String title;
  final double widthLine;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTapped,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontFamily: airBnbCereal,
              fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
              color: isSelected
                  ? const Color(0xff5669FF)
                  : const Color(0xff747688),
            ),
          ),
          isSelected
              ? Container(
                  height: 3,
                  width: widthLine,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xff5669FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
