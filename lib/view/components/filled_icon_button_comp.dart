import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';

class FilledIconButtonComp extends StatelessWidget {
  const FilledIconButtonComp(
      {super.key,
      required this.icon,
      required this.onTapped,
      required this.text});
  final IconData icon;
  final VoidCallback onTapped;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: const Color(0xff5669FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(color: Color(0xff5669FF), width: 1.5),
          ),
        ),
        onPressed: onTapped,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 28, color: Colors.white),
              const SizedBox(
                width: 12,
              ),
              Text(
                text,
                style: const TextStyle(
                    fontFamily: airBnbCereal,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
