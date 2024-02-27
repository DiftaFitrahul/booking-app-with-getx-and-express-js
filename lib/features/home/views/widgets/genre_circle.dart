import 'package:flutter/material.dart';

class GenreCircleButton extends StatelessWidget {
  const GenreCircleButton(
      {super.key,
      this.rotateDegree = 0,
      required this.icon,
      required this.onTap,
      required this.isSelected,
      required this.title});
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  final int rotateDegree;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(50),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color:
                    isSelected ? const Color(0xFF5669FF) : Colors.transparent,
                border: Border.all(
                  width: 1,
                  color: const Color(0xffB6B6B6),
                ),
                borderRadius: BorderRadius.circular(50),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: const Color(0xFF5669FF).withOpacity(0.19),
                          blurRadius: 7,
                          spreadRadius: 1,
                          offset: const Offset(0, 5),
                        )
                      ]
                    : null,
              ),
              child: Transform.rotate(
                angle: rotateDegree * 3.1415927 / 180,
                child: Icon(
                  icon,
                  color: isSelected ? Colors.white : const Color(0xffB6B6B6),
                  size: 37,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'AirbnbCereal',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
