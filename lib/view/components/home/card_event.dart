import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/constants/home/event_image.dart';
import 'package:booking_app/view/constants/home/icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardEvent extends StatelessWidget {
  const CardEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                            event3Path,
                            fit: BoxFit.cover,
                          ),
                        )),
                    Align(
                      alignment: const Alignment(-0.9, -0.8),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100]?.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 7.0, horizontal: 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('10',
                                    style: TextStyle(
                                        fontFamily: airBnbCereal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: Color(
                                          0XFFF0635A,
                                        ))),
                                Text('JUNE',
                                    style: TextStyle(
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
                      alignment: const Alignment(0.9, -0.8),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[100]?.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 9, horizontal: 10),
                              constraints: const BoxConstraints(),
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.bookmark_fill,
                                  size: 23,
                                  color: Color(
                                    0XFFF0635A,
                                  )))),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 240,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, top: 9),
                child: Text(
                  'International Band Linking Parksds',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
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
                  const Text(
                    '+20 Going',
                    style: TextStyle(
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
                      '36 Guild Street London, UK',
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
        ));
  }
}
