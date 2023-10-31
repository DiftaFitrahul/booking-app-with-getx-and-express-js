import 'package:booking_app/view/constants/event/asset.dart';
import 'package:booking_app/view/constants/home/drawer.dart';
import 'package:booking_app/view/functions/profile/review_comment_box.dart';
import 'package:flutter/widgets.dart';

class ReviewOrganizerSection extends StatelessWidget {
  const ReviewOrganizerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ReviewCommentBox(
          name: 'Rocks Velkeinjen',
          imagePath: organizer,
          date: '10 Feb 23',
          star: 4,
        ),
        ReviewCommentBox(
          name: 'Angelina Zolly',
          imagePath: userImagePath,
          date: '21 Aug 22',
          star: 5,
        ),
        ReviewCommentBox(
          name: 'Rocks Velkeinjen',
          imagePath: user2,
          date: '12 Dec 23',
          star: 5,
        ),
        ReviewCommentBox(
          name: 'Zenifero Bolex',
          imagePath: organizer,
          date: '01 Feb 23',
          star: 4,
        ),
      ],
    );
  }
}
