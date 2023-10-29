import 'package:booking_app/view/components/auth/button_primary_component.dart';
import 'package:booking_app/view/components/event/important_box.dart';
import 'package:booking_app/view/constants/event/asset.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/constants/home/event_image.dart';
import 'package:booking_app/view/functions/event/bottom_shadow.dart';
import 'package:booking_app/view/functions/event/trim_line_number_responsive.dart';
import 'package:booking_app/view/pages/event/organizer_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: screenHeight * 0.29,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: screenHeight * 0.29,
                          child: Image.asset(
                            event5Path,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8),
                          child: SafeArea(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Event Details',
                                  style: TextStyle(
                                    fontFamily: airBnbCereal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 23,
                                    color: Colors.white,
                                  ),
                                ),
                                const Expanded(child: SizedBox()),
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
                                        icon: const Icon(
                                            CupertinoIcons.bookmark_fill,
                                            size: 26,
                                            color: Colors.white))),
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(0, 30),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    offset: const Offset(0, 8),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 16, right: 10),
                                    width: 67,
                                    child: Stack(
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: SizedBox(
                                                height: 32,
                                                width: 32,
                                                child: Image.asset(
                                                  person3Path,
                                                  fit: BoxFit.cover,
                                                ))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                                height: 32,
                                                width: 32,
                                                child: Image.asset(
                                                  person2Path,
                                                  fit: BoxFit.cover,
                                                ))),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: SizedBox(
                                              height: 32,
                                              width: 32,
                                              child: Image.asset(
                                                person1Path,
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    '+20 Going',
                                    style: TextStyle(
                                      fontFamily: airBnbCereal,
                                      color: Color(0XFF3F38DD),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 45.0, right: 16),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor:
                                                const Color(0XFF3F38DD),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13))),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Text(
                                            'Invite',
                                            style: TextStyle(
                                              fontFamily: airBnbCereal,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22.0),
                    child: Text(
                      'International Band Music Concert',
                      style: TextStyle(
                        fontFamily: airBnbCereal,
                        fontWeight: FontWeight.w400,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ImportantBox(
                      title: '14 December, 2021',
                      subtitle: 'Tuesday, 4:00PM - 9:00PM',
                      iconPath: date),
                  const ImportantBox(
                      title: 'Gala Convention Center',
                      subtitle: '36 Guild Street London, UK ',
                      iconPath: pinMap),
                  const OrganizerSection(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                    child: Text(
                      'About Event',
                      style: TextStyle(
                        fontFamily: airBnbCereal,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: ReadMoreText(
                      'Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. This concert is very great and very enjoyable. The music is good for relaxing, one piece is a good anime, it tell about a person who name is luffy want to become king of pirrates, but know it almost reach that. Wano is good arc, luffy finally defeat kaido with new technique that is gear 5 hogogogog',
                      style: const TextStyle(
                        fontFamily: airBnbCereal,
                        fontSize: 16,
                      ),
                      trimLines: trimeLineResponsive(screenHeight),
                      delimiter: '...',
                      trimMode: TrimMode.Line,
                      colorClickableText: const Color(0XFF3F38DD),
                      trimExpandedText: ' Read Less...',
                      trimCollapsedText: ' Read More',
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: getHeightBottomShadow(screenHeight),
                foregroundDecoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0),
                          Colors.white.withOpacity(0.09),
                          Colors.white.withOpacity(0.2),
                          Colors.white.withOpacity(0.35),
                          Colors.white.withOpacity(0.45),
                          Colors.white.withOpacity(0.6),
                          Colors.white.withOpacity(0.8),
                          Colors.white
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [
                          0,
                          0.025,
                          0.05,
                          0.075,
                          0.1,
                          0.15,
                          0.25,
                          0.5
                        ])),
              ),
            ),
            Align(
                alignment: const Alignment(0, 0.94),
                child: ButtonPrimaryComp(
                    title: 'Buy Ticket \$120', onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
