import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/cupertino.dart';

class ImportantBox extends StatelessWidget {
  const ImportantBox(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.iconPath});
  final String title;
  final String subtitle;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
      child: Row(
        children: [
          Container(
            height: 55,
            width: 55,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0XFF3F38DD).withOpacity(0.11),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Image.asset(
              iconPath,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: airBnbCereal,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Color(0xff747688),
                  fontFamily: airBnbCereal,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
