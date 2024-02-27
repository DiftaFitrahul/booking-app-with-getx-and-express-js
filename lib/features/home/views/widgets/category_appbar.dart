import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';

class CategoryAppbar extends StatelessWidget {
  const CategoryAppbar(
      {super.key,
      required this.title,
      required this.bgColor,
      required this.onTapped,
      required this.icon,
      this.isRotatedIcon = false});
  final String title;
  final Color bgColor;
  final VoidCallback onTapped;
  final IconData icon;

  final bool isRotatedIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          padding: const EdgeInsets.symmetric(horizontal: 16.5, vertical: 9),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 0,
        ),
        onPressed: onTapped,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            isRotatedIcon
                ? Transform.rotate(
                    angle: 45 *
                        (3.1415926535897932 / 180), // 45 degrees in radians
                    child: Icon(
                      icon,
                    ),
                  )
                : Icon(icon),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontFamily: airBnbCereal,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
