import 'package:booking_app/getx/filter/genre_filter.dart';
import 'package:booking_app/view/components/filter/genre_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterGenreSection extends StatelessWidget {
  const FilterGenreSection({super.key});

  @override
  Widget build(BuildContext context) {
    final genreFilterController = Get.find<GenreFilter>();
    return Obx(() {
      return SizedBox(
        height: 110,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(
              width: 22,
            ),
            GenreCircleButton(
              isSelected: genreFilterController.isSports.value,
              icon: Icons.sports_basketball,
              title: "Sports",
              rotateDegree: 45,
              onTap: () {
                genreFilterController.changeSports();
              },
            ),
            GenreCircleButton(
              isSelected: genreFilterController.isMusic.value,
              icon: CupertinoIcons.music_note_2,
              title: "Music",
              onTap: () {
                genreFilterController.changeMusic();
              },
            ),
            GenreCircleButton(
              isSelected: genreFilterController.isArt.value,
              icon: Icons.palette,
              title: "Art",
              onTap: () {
                genreFilterController.changeArt();
              },
            ),
            GenreCircleButton(
              isSelected: genreFilterController.isFood.value,
              icon: Icons.flatware_rounded,
              title: "Food",
              onTap: () {
                genreFilterController.changeFood();
              },
            ),
            GenreCircleButton(
              isSelected: genreFilterController.isLove.value,
              icon: CupertinoIcons.heart_fill,
              title: "Love",
              onTap: () {
                genreFilterController.changeLove();
              },
            ),
            GenreCircleButton(
              isSelected: genreFilterController.isEducation.value,
              icon: Icons.school,
              title: "Education",
              onTap: () {
                genreFilterController.changeEducation();
              },
            ),
            const SizedBox(
              width: 22,
            )
          ],
        ),
      );
    });
  }
}
