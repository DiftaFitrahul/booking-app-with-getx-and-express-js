import 'dart:ui';

import 'package:booking_app/features/home/cubit/filter_cubit.dart';
import 'package:booking_app/features/home/cubit/filter_cubit_state.dart';
import 'package:booking_app/features/home/cubit/home_cubit.dart';
import 'package:booking_app/features/home/cubit/home_cubit_state.dart';
import 'package:booking_app/model/repository/home/event.dart';
import 'package:booking_app/view/components/home/header_event_title.dart';
import 'package:booking_app/features/home/views/screen/drawer.dart';
import 'package:booking_app/view/pages/home/bottom_padding.dart';
import 'package:booking_app/view/pages/home/invite_friend_card.dart';
import 'package:booking_app/view/pages/home/list_event_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../view/constants/fonts/air_bnb_cereal.dart';
import '../../../../view/constants/home/drawer.dart';
import '../../../../view/constants/home/icon.dart';
import '../widgets/category_appbar.dart';
import '../widgets/genre_circle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeCubitState>(
      builder: (context, homeCubitStateValue) {
        return BlocBuilder<FilterCubit, FilterCubitState>(
          builder: (context, filterCubitStateValue) {
            return Stack(
              children: [
                const DrawerSection(),
                _upgradePro(),
                _backgroundHomeFirstLayer(
                    homeCubitStateValue: homeCubitStateValue),
                _backgroundHomeSecondLayer(
                    homeCubitStateValue: homeCubitStateValue),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  transform: Matrix4.translationValues(
                    homeCubitStateValue.xOffset,
                    homeCubitStateValue.yOffset,
                    homeCubitStateValue.zOffset,
                  )..scale(homeCubitStateValue.isDrawerOpen ? 0.87 : 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 249, 249, 249),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            homeCubitStateValue.isDrawerOpen ? 33.0 : 0),
                        topRight: Radius.circular(
                            homeCubitStateValue.isDrawerOpen ? 33.0 : 0),
                      ),
                    ),
                    child: CustomScrollView(slivers: [
                      SliverPersistentHeader(
                        delegate: HomeSliverAppbar(),
                        pinned: true,
                      ),
                      HeaderEventTitle(
                        title: "Upcoming Events",
                        onTapped: () {},
                      ),
                      const ListEventCard(data: EventRepository.data),
                      const InviteFriendCard(),
                      HeaderEventTitle(
                        topPadding: 10,
                        title: "Nearby You",
                        onTapped: () {},
                      ),
                      const ListEventCard(data: EventRepository.nearbyYou),
                      const BottomHomePadding()
                    ]),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget _upgradePro() {
    return Transform.translate(
      offset: const Offset(0, 50),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          margin: const EdgeInsets.only(left: 20),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: const Color(0xFF00F8FF).withOpacity(0.15),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                upgradeProPath,
                scale: 1.7,
              ),
              const SizedBox(width: 10),
              const Text(
                'Upgrade Pro',
                style: TextStyle(
                    fontFamily: airBnbCereal,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color(0XFF00F8FF)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _backgroundHomeFirstLayer(
      {required HomeCubitState homeCubitStateValue}) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.translationValues(
            (homeCubitStateValue.xOffset - 35).clamp(0, 225),
            (homeCubitStateValue.yOffset + 60).clamp(0, 130),
            homeCubitStateValue.zOffset)
          ..scale(homeCubitStateValue.isDrawerOpen ? 0.81 : 1.0),
        child: Container(
          height: double.infinity,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                    homeCubitStateValue.isDrawerOpen ? 33.0 : 0),
                bottomLeft: Radius.circular(
                    homeCubitStateValue.isDrawerOpen ? 33.0 : 0),
              ),
              color: const Color(0xFFBCBCBC).withOpacity(0.12)),
        ));
  }

  Widget _backgroundHomeSecondLayer(
      {required HomeCubitState homeCubitStateValue}) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.translationValues(
            (homeCubitStateValue.xOffset - 20).clamp(0, 240),
            (homeCubitStateValue.yOffset + 40).clamp(0, 110),
            homeCubitStateValue.zOffset)
          ..scale(homeCubitStateValue.isDrawerOpen ? 0.87 : 1.0),
        child: Container(
          height: double.infinity,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                    homeCubitStateValue.isDrawerOpen ? 33.0 : 0),
                bottomLeft: Radius.circular(
                    homeCubitStateValue.isDrawerOpen ? 33.0 : 0),
              ),
              color: const Color(0xFFBCBCBC).withOpacity(0.10)),
        ));
  }
}

class HomeSliverAppbar extends SliverPersistentHeaderDelegate {
  static const _maxExtent = 207.0;
  static const _minExtent = 160.0;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final heightScreen = MediaQuery.sizeOf(context).height;
    final widthScreen = MediaQuery.sizeOf(context).width;
    double percentage =
        ((_maxExtent - shrinkOffset - _minExtent) / (_maxExtent - _minExtent))
            .clamp(0, 1);

    return BlocBuilder<HomeCubit, HomeCubitState>(
      builder: (context, homeCubitStateValue) {
        return BlocBuilder<FilterCubit, FilterCubitState>(
          builder: (context, filterCubitStateValue) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.only(
                top: 10,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF4A43EC),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      homeCubitStateValue.isDrawerOpen ? 33.0 : 0),
                  topRight: Radius.circular(
                      homeCubitStateValue.isDrawerOpen ? 33.0 : 0),
                  bottomLeft: Radius.circular(33.0 - 33 * (1 - percentage)),
                  bottomRight: Radius.circular(33.0 - 33 * (1 - percentage)),
                ),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  _appBar(
                    context,
                    percentage: percentage,
                    heightScreen: heightScreen,
                    widthScreen: widthScreen,
                  ),
                  _searchBar(context,
                      percentage: percentage, widthScreen: widthScreen),
                  _filterBar(context,
                      filterCubitStateValue: filterCubitStateValue,
                      homeCubitStateValue: homeCubitStateValue,
                      percentage: percentage,
                      heightScreen: heightScreen),
                  _listCategoryBar(percentage: percentage)
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  double get maxExtent => _maxExtent;

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

  Widget _appBar(
    BuildContext context, {
    required double percentage,
    required double heightScreen,
    required double widthScreen,
  }) {
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
                  onPressed: () {
                    context.read<HomeCubit>().toggleDrawer(
                        heightScreen: heightScreen, widthScreen: widthScreen);
                  },
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
                          onTap: percentage < 0.8
                              ? null
                              : () {
                                  // Get.toNamed(RoutesName.notification);
                                },
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

  Widget _searchBar(BuildContext context,
      {required double percentage, required double widthScreen}) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: EdgeInsets.lerp(
            const EdgeInsets.only(left: 16, top: 20, bottom: 20),
            const EdgeInsets.only(bottom: 35, left: 12),
            1 - percentage),
        alignment: Alignment.lerp(
          Alignment.centerLeft,
          Alignment.center,
          1 - percentage,
        ),
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 225),
            padding: EdgeInsets.only(top: percentage * 43),
            width: widthScreen * 0.65 + 20 * (1 - percentage),
            child: TextField(
              onTapOutside: (event) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              style: const TextStyle(
                  fontSize: 23, fontFamily: airBnbCereal, color: Colors.white),
              decoration: InputDecoration(
                // fillColor: Colors.amber,
                // filled: true,

                border: InputBorder.none,
                prefixIconColor: Colors.white,
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  size: 25,
                ),
                contentPadding:
                    const EdgeInsets.all(20.0), // Increase content padding
                isDense: true, //
                hintText: "| Search...",

                hintStyle: TextStyle(
                    fontFamily: airBnbCereal,
                    color: Colors.white.withOpacity(0.3),
                    fontSize: 23),
              ),
            )));
  }

  Widget _filterBar(BuildContext context,
      {required HomeCubitState homeCubitStateValue,
      required FilterCubitState filterCubitStateValue,
      required double percentage,
      required double heightScreen}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      padding: EdgeInsets.lerp(
          const EdgeInsets.only(right: 16, top: 20, bottom: 20),
          const EdgeInsets.only(
            bottom: 35,
            right: 16,
          ),
          1 - percentage),
      alignment: Alignment.centerRight,
      child: AnimatedContainer(
        width: percentage == 0.0 ? 36 : 89,
        height: 36,
        padding: const EdgeInsets.only(
          left: 5,
        ),
        margin: EdgeInsets.only(top: percentage * 43),
        duration: const Duration(milliseconds: 225),
        decoration: BoxDecoration(
          color: const Color(0xFF5D56F3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
          onTap: () {
            showModalBottomSheet(
              barrierColor: Colors.black.withOpacity(0.95),
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) => Container(
                height: heightScreen * 0.87,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2.7, sigmaY: 2.7),
                          child: Container(
                            width: double.infinity,
                            height: 100,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: heightScreen * 0.848,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 26,
                              height: 5,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(2.5),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 22.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Filter',
                                  style: TextStyle(
                                    fontFamily: airBnbCereal,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            _filterGenreSection(context,
                                filterCubitStateValue: filterCubitStateValue)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: const Color(0xFFA29EF0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.filter_list,
                    size: 19,
                    color: Color(0xFF5D56F3),
                  )),
              Builder(
                builder: (context) {
                  if (percentage == 0.0) {
                    context.read<HomeCubit>().toggleShowFilter(value: false);
                  } else {
                    Future.delayed(const Duration(milliseconds: 284), () {
                      context.read<HomeCubit>().toggleShowFilter(value: true);
                    });
                  }
                  return Container(
                    padding: EdgeInsets.only(
                        left: homeCubitStateValue.isShowTextFilter ? 5.0 : 0),
                    child: Text(
                      homeCubitStateValue.isShowTextFilter ? "Filters" : "",
                      style: const TextStyle(
                          fontFamily: airBnbCereal,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _filterGenreSection(BuildContext context,
      {required FilterCubitState filterCubitStateValue}) {
    return SizedBox(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          const SizedBox(
            width: 22,
          ),
          GenreCircleButton(
            isSelected: filterCubitStateValue.isSports,
            icon: Icons.sports_basketball,
            title: "Sports",
            rotateDegree: 45,
            onTap: () {
              context.read<FilterCubit>().changeSports();
            },
          ),
          GenreCircleButton(
            isSelected: filterCubitStateValue.isMusic,
            icon: CupertinoIcons.music_note_2,
            title: "Music",
            onTap: () {
              context.read<FilterCubit>().changeMusic();
            },
          ),
          GenreCircleButton(
            isSelected: filterCubitStateValue.isArt,
            icon: Icons.palette,
            title: "Art",
            onTap: () {
              context.read<FilterCubit>().changeArt();
            },
          ),
          GenreCircleButton(
            isSelected: filterCubitStateValue.isFood,
            icon: Icons.flatware_rounded,
            title: "Food",
            onTap: () {
              context.read<FilterCubit>().changeFood();
            },
          ),
          GenreCircleButton(
            isSelected: filterCubitStateValue.isLove,
            icon: CupertinoIcons.heart_fill,
            title: "Love",
            onTap: () {
              context.read<FilterCubit>().changeLove();
            },
          ),
          GenreCircleButton(
            isSelected: filterCubitStateValue.isEducation,
            icon: Icons.school,
            title: "Education",
            onTap: () {
              context.read<FilterCubit>().changeEducation();
            },
          ),
          const SizedBox(
            width: 22,
          )
        ],
      ),
    );
  }

  Widget _listCategoryBar({required double percentage}) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 7),
        child: Transform.translate(
            offset: Offset(0, 27.0 - 27 * (1 - percentage)),
            child: SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  CategoryAppbar(
                      isRotatedIcon: true,
                      icon: Icons.sports_basketball_rounded,
                      title: 'Sports',
                      bgColor: const Color(0XFFF0635A),
                      onTapped: () {}),
                  CategoryAppbar(
                      title: 'Music',
                      icon: CupertinoIcons.music_note_2,
                      bgColor: const Color(0XFFF59762),
                      onTapped: () {}),
                  CategoryAppbar(
                      icon: Icons.flatware_rounded,
                      title: 'Food',
                      bgColor: const Color(0XFF29D697),
                      onTapped: () {}),
                  CategoryAppbar(
                      title: 'Art',
                      icon: Icons.palette,
                      bgColor: const Color(0XFF46CDFB),
                      onTapped: () {}),
                ],
              ),
            )),
      ),
    );
  }
}
