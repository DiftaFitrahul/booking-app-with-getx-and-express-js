import 'package:booking_app/view/components/event/event_box.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/constants/home/event_image.dart';
import 'package:booking_app/view/constants/profile/organizer.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';

Widget getItemContentNavbar(OrganizerNavBarItem item) {
  if (item == OrganizerNavBarItem.about) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: ReadMoreText(
        'Enjoy askdnaskdkasdkadkasdkjakdjkajdkasjdkjaskdjkakasdasnjdaskdbabduwaudoadbasjdbaskjdbalbwubdawkdlubaklsjdb your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. This concert is very great and very enjoyable. The music is good for relaxing, one piece is a good anime, it tell about a person who name is luffy want to become king of pirrates, but know it almost reach that. Wano is good arc, luffy finally defeat kaido with new technique that is gear 5 hogogogog',
        style: TextStyle(
          fontFamily: airBnbCereal,
          fontSize: 16,
        ),
        trimLines: 4,
        delimiter: '...',
        trimMode: TrimMode.Line,
        colorClickableText: Color(0XFF3F38DD),
        trimExpandedText: ' Read Less \u2303',
        trimCollapsedText: ' Read More \u2304',
      ),
    );
  } else if (item == OrganizerNavBarItem.events) {
    return Column(
      children: [
        EventBox(
          date: "1st  May- Sat -2:00 PM",
          title: "A virtual evening of smooth jazz",
          imagePath: event7Path,
          onTapped: () {},
        ),
        EventBox(
          date: "1st  May- Sat -2:00 PM",
          title: "Jo malone london’s mother’s day ",
          imagePath: event8Path,
          onTapped: () {},
        ),
        EventBox(
          date: "1st  May- Sat -2:00 PM",
          title: "Women's leadership conference",
          imagePath: event6Path,
          onTapped: () {},
        ),
        EventBox(
          date: "1st  May- Sat -2:00 PM",
          title: "International gala music festival",
          imagePath: event1Path,
          onTapped: () {},
        ),
      ],
    );
  } else {
    return const Text('data');
  }
}
