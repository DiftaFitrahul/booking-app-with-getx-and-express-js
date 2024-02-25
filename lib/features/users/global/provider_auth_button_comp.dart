import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';

class ProviderAuthButton extends StatelessWidget {
  final String title;
  final String logoPath;
  final VoidCallback onPress;
  const ProviderAuthButton({
    super.key,
    required this.title,
    required this.logoPath,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight < 880 ? 29 : 35,
                  width: screenHeight < 880 ? 29 : 35,
                  child: Image.asset(logoPath),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontFamily: airBnbCereal,
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          )),
    );
  }
}
