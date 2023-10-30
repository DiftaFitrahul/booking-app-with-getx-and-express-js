import 'package:booking_app/getx/profile/organizer.dart';
import 'package:booking_app/view/components/event/event_box.dart';
import 'package:booking_app/view/components/filled_icon_button_comp.dart';
import 'package:booking_app/view/components/outline_icon_button_comp.dart';
import 'package:booking_app/view/components/profile/header_profile.dart';
import 'package:booking_app/view/components/profile/navbar_organizer_profile.dart';
import 'package:booking_app/view/constants/event/asset.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/constants/profile/organizer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class DetailOrganizerEvent extends StatelessWidget {
  const DetailOrganizerEvent({super.key});

  @override
  Widget build(BuildContext context) {
    final organizerController = Get.find<OrganizerController>();
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100]?.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                            padding: const EdgeInsets.symmetric(
                                vertical: 11, horizontal: 12),
                            constraints: const BoxConstraints(),
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert_outlined,
                                size: 26, color: Colors.black))),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const HeaderProfile(
                    imagePath: organizer, following: 121, followers: 5729),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 1,
                      child: FilledIconButtonComp(
                          icon: Icons.person_add_alt_outlined,
                          onTapped: () {},
                          text: 'Follow'),
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Expanded(
                      flex: 1,
                      child: OutlineIconButtonComp(
                          icon: Icons.sms_outlined,
                          onTapped: () {},
                          text: 'Messages'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Obx(
                  () => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NavBarOrganizerProfile(
                          title: 'ABOUT',
                          isSelected:
                              organizerController.navbarSelected.value ==
                                  OrganizerNavBarItem.about,
                          widthLine: 58,
                          onTapped: () {
                            organizerController.changeNavBarSelected(
                                OrganizerNavBarItem.about);
                          },
                        ),
                        NavBarOrganizerProfile(
                          title: 'EVENT',
                          isSelected:
                              organizerController.navbarSelected.value ==
                                  OrganizerNavBarItem.events,
                          widthLine: 52,
                          onTapped: () {
                            organizerController.changeNavBarSelected(
                                OrganizerNavBarItem.events);
                          },
                        ),
                        NavBarOrganizerProfile(
                          title: 'REVIEWS',
                          isSelected:
                              organizerController.navbarSelected.value ==
                                  OrganizerNavBarItem.review,
                          widthLine: 72,
                          onTapped: () {
                            organizerController.changeNavBarSelected(
                                OrganizerNavBarItem.review);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: ReadMoreText(
                    'Enjoy askdnaskdkasdkadkasdkjakdjkajdkasjdkjaskdjkakasdasnjdaskdbabduwaudoadbasjdbaskjdbalbwubdawkdlubaklsjdb your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. This concert is very great and very enjoyable. The music is good for relaxing, one piece is a good anime, it tell about a person who name is luffy want to become king of pirrates, but know it almost reach that. Wano is good arc, luffy finally defeat kaido with new technique that is gear 5 hogogogog',
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
                ),
                const SizedBox(
                  height: 30,
                ),
                const EventBox()
              ],
            ),
          ),
        ),
      )),
    );
  }
}
