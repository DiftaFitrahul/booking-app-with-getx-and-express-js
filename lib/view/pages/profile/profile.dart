import 'package:booking_app/view/components/outline_icon_button_comp.dart';
import 'package:booking_app/view/components/profile/header_profile.dart';
import 'package:booking_app/view/components/profile/interest_box.dart';
import 'package:booking_app/view/constants/home/drawer.dart';
import 'package:flutter/material.dart';

import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:readmore/readmore.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'PROFILE',
                style: TextStyle(
                  fontFamily: airBnbCereal,
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const HeaderProfile(
                  imagePath: userImagePath, followers: 346, following: 350),
              const SizedBox(
                height: 20,
              ),
              OutlineIconButtonComp(
                text: 'Edit Profile',
                icon: Icons.edit_note_rounded,
                onTapped: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About Me',
                  style: TextStyle(
                      fontFamily: airBnbCereal,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReadMoreText(
                'Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. This concert is very great and very enjoyable. The music is good for relaxing, one piece is a good anime, it tell about a person who name is luffy want to become king of pirrates, but know it almost reach that. Wano is good arc, luffy finally defeat kaido with new technique that is gear 5 hogogogog',
                style: TextStyle(
                  fontFamily: airBnbCereal,
                  fontSize: 16,
                ),
                trimLines: 4,
                delimiter: '...',
                trimMode: TrimMode.Line,
                colorClickableText: Color(0XFF3F38DD),
                trimExpandedText: ' Read Less \u2303',
                trimCollapsedText: ' Read More \u2304',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Interest',
                    style: TextStyle(
                        fontFamily: airBnbCereal,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor:
                            const Color(0xff5669FF).withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.mode_edit_outline_outlined,
                            size: 15,
                            color: Color(0XFF3F38DD),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'CHANGE',
                            style: TextStyle(
                                fontFamily: airBnbCereal,
                                fontSize: 10,
                                color: Color(0XFF3F38DD),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Wrap(
                direction: Axis.horizontal,
                children: [
                  InterestBox(
                    text: 'Games Online',
                    bgColor: Color(0xff6B7AED),
                  ),
                  InterestBox(
                    text: 'Concert',
                    bgColor: Color(0xffEE544A),
                  ),
                  InterestBox(
                    text: 'Music',
                    bgColor: Color(0xffFF8D5D),
                  ),
                  InterestBox(
                    text: 'Art',
                    bgColor: Color(0xff7D67EE),
                  ),
                  InterestBox(
                    text: 'Movie',
                    bgColor: Color(0xff29D697),
                  ),
                  InterestBox(
                    text: 'Others',
                    bgColor: Color(0xff39D1F2),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
