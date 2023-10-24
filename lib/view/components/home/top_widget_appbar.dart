import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/constants/home/icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopWidgetAppbar extends StatelessWidget {
  const TopWidgetAppbar({super.key, required this.percentage});
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Image.asset(HomeIcon.menu),
                  onPressed: () {},
                ),
                AnimatedOpacity(
                  opacity: percentage,
                  duration: const Duration(milliseconds: 100),
                  child: InkWell(
                      onTap: percentage < 0.8 ? null : () {},
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Current Location',
                                style: TextStyle(
                                    fontFamily: airBnbCereal,
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                              Icon(
                                Icons.arrow_drop_down_outlined,
                                color: Colors.white,
                                size: 25,
                              )
                            ],
                          ),
                          Text(
                            'New York, USA',
                            style: TextStyle(
                                fontFamily: airBnbCereal,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      )),
                ),
                percentage == 0.0
                    ? const SizedBox()
                    : AnimatedOpacity(
                        opacity: percentage,
                        duration: const Duration(milliseconds: 100),
                        child: InkWell(
                          onTap: percentage < 0.8 ? null : () {},
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color(0xFF524CE0),
                                borderRadius: BorderRadius.circular(30)),
                            child: Stack(
                              fit: StackFit.loose,
                              children: [
                                const Icon(
                                  CupertinoIcons.bell,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF02E9FE),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ));
  }
}
