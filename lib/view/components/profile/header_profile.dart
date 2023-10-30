import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile(
      {super.key,
      required this.imagePath,
      required this.following,
      required this.followers});
  final String imagePath;
  final int following;
  final int followers;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              imagePath,
              height: 96,
              width: 96,
              fit: BoxFit.cover,
            )),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Ashfak Sayem',
            style: TextStyle(
              fontFamily: airBnbCereal,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  following.toString(),
                  style: const TextStyle(
                      fontFamily: airBnbCereal,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Following',
                  style: TextStyle(
                      fontFamily: airBnbCereal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff747688)),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              width: 1.5,
              color: Colors.grey[300],
            ),
            Column(
              children: [
                Text(
                  followers.toString(),
                  style: const TextStyle(
                      fontFamily: airBnbCereal,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Followers',
                  style: TextStyle(
                      fontFamily: airBnbCereal,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff747688)),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
