import 'package:booking_app/view/constants/event/asset.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrganizerSection extends StatelessWidget {
  const OrganizerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: const Color(0XFF3F38DD).withOpacity(0.11),
                borderRadius: BorderRadius.circular(13),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  organizer,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(RoutesName.detailOrganizerEvent);
            },
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Ashfak Sayem',
                  style: TextStyle(
                    fontFamily: airBnbCereal,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Organizer',
                  style: TextStyle(
                    color: Color(0xff747688),
                    fontFamily: airBnbCereal,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          ElevatedButton(
              onPressed: () {
                Get.toNamed(RoutesName.detailOrganizerEvent);
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: const Color(0xff5669FF).withOpacity(0.2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
              ),
              child: const Text(
                'Follow',
                style: TextStyle(
                  fontFamily: airBnbCereal,
                  color: Color(0xff5669FF),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ))
        ],
      ),
    );
  }
}
