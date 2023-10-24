import 'package:booking_app/view/components/intro/slider_content.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class IntroText {
  static const List<SliderContent> content = [
    SliderContent(
      title: 'Explore Upcoming and Nearby Events',
      subtitle:
          'In publising and graphic design, Lorem ipsum is a placeholder text commonly',
    ),
    SliderContent(
      title: 'Web Have Modern Events Calendar Feature',
      subtitle:
          'In publising and graphic design, Lorem ipsum is a placeholder text commonly',
    ),
    SliderContent(
      title: 'To Look Up More Events or Activities Nearby By Map',
      subtitle:
          'In publising and graphic design, Lorem ipsum is a placeholder text commonly',
    )
  ];

  const IntroText._();
}
