import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/constants/home/event_image.dart';
import 'package:booking_app/view/constants/home/icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardEvent extends StatelessWidget {
  const CardEvent(
      {super.key,
      required this.title,
      required this.eventPath,
      required this.date,
      required this.month,
      required this.numberOfPeople,
      required this.place,
      required this.onTapped,
      required this.onBookmarkTapped});
  final String title;
  final String eventPath;
  final String date;
  final String month;
  final int numberOfPeople;
  final String place;
  final VoidCallback onTapped;
  final VoidCallback onBookmarkTapped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Card(
          elevation: 0,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 255,
                  height: 163,
                  child: Stack(
                    children: [
                      SizedBox(
                          width: 255,
                          height: 163,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              eventPath,
                              fit: BoxFit.cover,
                            ),
                          )),
                      Align(
                        alignment: const Alignment(-0.91, -0.81),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[100]?.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 7.0, horizontal: 10),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(date,
                                      style: const TextStyle(
                                          fontFamily: airBnbCereal,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Color(
                                            0XFFF0635A,
                                          ))),
                                  Text(month,
                                      style: const TextStyle(
                                          fontFamily: airBnbCereal,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2,
                                          fontSize: 15,
                                          color: Color(
                                            0XFFF0635A,
                                          )))
                                ],
                              ),
                            )),
                      ),
                      Align(
                        alignment: const Alignment(0.91, -0.81),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[100]?.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 11, horizontal: 12),
                                constraints: const BoxConstraints(),
                                onPressed: onBookmarkTapped,
                                icon: const Icon(CupertinoIcons.bookmark_fill,
                                    size: 26,
                                    color: Color(
                                      0XFFF0635A,
                                    )))),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 240,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 9),
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                      fontFamily: airBnbCereal,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
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
                          SizedBox(
                              height: 32,
                              width: 32,
                              child: Image.asset(
                                person1Path,
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                    ),
                    Text(
                      '+$numberOfPeople Going',
                      style: const TextStyle(
                        fontFamily: airBnbCereal,
                        color: Color(0XFF3F38DD),
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 16.0),
                child: Row(
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Image.asset(
                        HomeIcon.pin,
                        scale: 2.7,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 180,
                      child: Text(
                        place,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: airBnbCereal,
                            color: Colors.grey[500],
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
