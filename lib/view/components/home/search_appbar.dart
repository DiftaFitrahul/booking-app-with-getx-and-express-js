import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({super.key, required this.percentage});
  final double percentage;

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.sizeOf(context).width;
    return AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: EdgeInsets.lerp(
            const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            const EdgeInsets.only(bottom: 30),
            1 - percentage),
        alignment: Alignment.lerp(
          Alignment.centerLeft,
          Alignment.center,
          1 - percentage,
        ),
        child: SizedBox(
            width: widthScreen * 0.65,
            child: TextField(
              onTapOutside: (event) {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              style: TextStyle(fontSize: 23),
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
                    EdgeInsets.all(20.0), // Increase content padding
                isDense: true, //
                hintText: "| Search...",

                hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.3), fontSize: 23),
              ),
            )));
  }
}
