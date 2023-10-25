import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/constants/home/event_image.dart';
import 'package:booking_app/view/constants/home/invite_friend.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InviteFriendCard extends StatelessWidget {
  const InviteFriendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 20),
        child: Card(
          elevation: 0,
          color: const Color.fromARGB(255, 231, 252, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ClipRect(
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
                height: 150,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Transform.translate(
                        offset: const Offset(-2, 17),
                        child: Transform.scale(
                          scale: 1.25,
                          child: Image.asset(
                            inviteFriendPath,
                            alignment: Alignment.center,
                            height: 200,
                            width: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.83, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Invite your friends',
                            style: TextStyle(
                                fontFamily: airBnbCereal,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Color(0xFF120D26)),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 6.0, bottom: 14),
                            child: Text(
                              'Get \$20 for ticket',
                              style: TextStyle(
                                  fontFamily: airBnbCereal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Color(0xFF484D70)),
                            ),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  backgroundColor:
                                      const Color(0xFF00F8FF).withOpacity(0.4),
                                  elevation: 0),
                              onPressed: () {},
                              child: const Text(
                                'INVITE',
                                style: TextStyle(
                                  fontFamily: airBnbCereal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
