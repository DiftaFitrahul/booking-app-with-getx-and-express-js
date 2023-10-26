import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/constants/home/drawer.dart';
import 'package:flutter/cupertino.dart';

class UpgradeProSection extends StatelessWidget {
  const UpgradeProSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 50),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          margin: const EdgeInsets.only(left: 20),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: const Color(0xFF00F8FF).withOpacity(0.15),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                upgradeProPath,
                scale: 1.7,
              ),
              const SizedBox(width: 10),
              const Text(
                'Upgrade Pro',
                style: TextStyle(
                    fontFamily: airBnbCereal,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color(0XFF00F8FF)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
