import 'package:flutter/material.dart';

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({super.key, required this.percentage});
  final double percentage;
  @override
  Widget build(BuildContext context) {
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
      child: const Text('makan'),
    );
  }
}
