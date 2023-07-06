import 'package:booking_app/components/intro/slider_content.dart';
import 'package:flutter/foundation.dart' show immutable;

@immutable
class IntroText {
  static const List<SliderContent> content = [
    SliderContent(
      title:
          'Heres an example of how you can achieve a blur effect on an image',
      subtitle:
          'In this example, were using the BackdropFilter widget to apply the blur effect.',
    ),
    SliderContent(
      title:
          'You can use the GoogleMapController to control the map view',
      subtitle:
          'Its important to note that the GoogleMap widget',
    ),
    SliderContent(
      title:
          'get an API key from Google Cloud. Youll need to add this key in the appropriate',
      subtitle:
          'AndroidManifest.xml for Android, AppDelegate.m or AppDelegate.swift for iOS',
    )
  ];

  const IntroText._();
}
