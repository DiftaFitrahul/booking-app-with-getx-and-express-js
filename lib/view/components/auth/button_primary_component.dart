import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';

class ButtonPrimaryComp extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const ButtonPrimaryComp(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: const Color.fromARGB(255, 86, 105, 240)),
          child: IntrinsicHeight(
            child: Stack(
              children: [
                Align(
                    child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: screenHeight < 880 ? 22 : 25.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontFamily: airBnbCereal,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                )),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 61, 86, 240),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
