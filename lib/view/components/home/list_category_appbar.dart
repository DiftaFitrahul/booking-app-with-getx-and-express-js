import 'package:booking_app/features/home/views/widgets/category_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCategoryAppbar extends StatelessWidget {
  const ListCategoryAppbar({super.key, required this.percentage});
  final double percentage;

  @override
  Widget build(BuildContext context) {
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
