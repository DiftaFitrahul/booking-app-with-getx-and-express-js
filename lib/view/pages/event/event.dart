import 'package:booking_app/view/components/event/important_box.dart';
import 'package:booking_app/view/constants/event/asset.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/constants/home/event_image.dart';
import 'package:booking_app/view/pages/event/organizer_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Column(
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
                      horizontal: 16.0, vertical: 13),
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
                                icon: const Icon(CupertinoIcons.bookmark_fill,
                                    size: 26, color: Colors.white))),
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
                            margin: const EdgeInsets.only(left: 16, right: 10),
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
                            padding:
                                const EdgeInsets.only(left: 45.0, right: 16),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color(0XFF3F38DD),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(13))),
                                child: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
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
        ],
      ),
    );
  }
}
