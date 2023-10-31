import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';

class ReviewCommentBox extends StatelessWidget {
  const ReviewCommentBox(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.date,
      required this.star});
  final String imagePath;
  final String name;
  final String date;
  final int star;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              imagePath,
              width: 45,
              height: 45,
            ),
          ),
          const SizedBox(
            width: 17,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontFamily: airBnbCereal,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                          color: Color(0xffADAFBB),
                          fontFamily: airBnbCereal,
                          fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                    children: List.generate(
                  star,
                  (index) => const Icon(Icons.star_rounded,
                      color: Color(0xffFFC107), size: 23),
                )),
                const SizedBox(
                  height: 7,
                ),
                const Text(
                  'Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: airBnbCereal,
                      fontSize: 16),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
