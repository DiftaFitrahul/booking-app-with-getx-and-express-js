import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  String selected = 'left';

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
                children: [
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
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Events',
                            style: TextStyle(
                              fontFamily: airBnbCereal,
                              fontWeight: FontWeight.w500,
                              fontSize: 23,
                              color: Colors.black,
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
                                  icon: const Icon(Icons.more_vert_outlined,
                                      size: 26, color: Colors.black))),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 25),
                    width: screenWidth * 0.8,
                    height: 55,
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(
                      children: [
                        AnimatedAlign(
                          duration: const Duration(milliseconds: 150),
                          alignment: selected == 'left'
                              ? Alignment.centerLeft
                              : Alignment.centerRight,
                          child: Container(
                            height: 44,
                            width: screenWidth * 0.37,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 22.0, left: 32),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selected = 'left';
                                    });
                                  },
                                  child: Text(
                                    'UPCOMING',
                                    style: TextStyle(
                                        fontFamily: airBnbCereal,
                                        fontSize: 15,
                                        color: selected == 'left'
                                            ? const Color(0xff5669FF)
                                            : const Color(0xff9B9B9B),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selected = 'right';
                                    });
                                  },
                                  child: Text(
                                    'PAST EVENTS',
                                    style: TextStyle(
                                        fontFamily: airBnbCereal,
                                        fontSize: 15,
                                        color: selected == 'right'
                                            ? const Color(0xff5669FF)
                                            : const Color(0xff9B9B9B),
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
