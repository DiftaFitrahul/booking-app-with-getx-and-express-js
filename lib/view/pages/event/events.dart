import 'package:booking_app/getx/events/event.dart';
import 'package:booking_app/view/constants/event/asset.dart';
import 'package:booking_app/view/constants/event/events_filter.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final eventController = Get.find<EventController>();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: SafeArea(
                    child: SizedBox(
                      width: screenWidth,
                      height: 50,
                      child: Stack(
                        children: [
                          const Align(
                            alignment: Alignment.center,
                            child: Text(
                              'EVENTS',
                              style: TextStyle(
                                fontFamily: airBnbCereal,
                                fontWeight: FontWeight.w500,
                                fontSize: 23,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  width: screenWidth * 0.8,
                  height: 55,
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(
                    children: [
                      Obx(
                        () => AnimatedAlign(
                          duration: const Duration(milliseconds: 150),
                          alignment:
                              eventController.selectedFilterEvent.value ==
                                      EventFilter.upcoming
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                          child: Container(
                            height: 44,
                            width: screenWidth * 0.37,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0.5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 22.0, left: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  onTap: () {
                                    eventController.changeSelectedFilterEvent(
                                        EventFilter.upcoming);
                                  },
                                  child: Obx(
                                    () => Text(
                                      'UPCOMING',
                                      style: TextStyle(
                                          fontFamily: airBnbCereal,
                                          fontSize: 15,
                                          color: eventController
                                                      .selectedFilterEvent
                                                      .value ==
                                                  EventFilter.upcoming
                                              ? const Color(0xff5669FF)
                                              : const Color(0xff9B9B9B),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )),
                              InkWell(
                                onTap: () {
                                  eventController.changeSelectedFilterEvent(
                                      EventFilter.pastEvents);
                                },
                                child: Obx(
                                  () => Text(
                                    'PAST EVENTS',
                                    style: TextStyle(
                                        fontFamily: airBnbCereal,
                                        fontSize: 15,
                                        color: eventController
                                                    .selectedFilterEvent
                                                    .value ==
                                                EventFilter.pastEvents
                                            ? const Color(0xff5669FF)
                                            : const Color(0xff9B9B9B),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.11,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    height: 202,
                    width: 202,
                    decoration: const BoxDecoration(
                      color: Color(0xffEBF5FC),
                    ),
                    child: ClipRect(
                      clipBehavior: Clip.antiAlias,
                      child: Transform.translate(
                        offset: const Offset(9, 29),
                        child: Image.asset(
                          noEventImage,
                          scale: 1.97,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'No Upcoming Event',
                  style: TextStyle(
                      fontFamily: airBnbCereal,
                      fontWeight: FontWeight.w500,
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 260,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: airBnbCereal,
                        color: Color(0xff747688),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
