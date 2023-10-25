import 'package:booking_app/view/constants/home/event_image.dart';

class EventRepository {
  const EventRepository._();

  static const data = [
    {
      "title": "International Band Melody",
      "image": event1Path,
      "date": "10",
      "month": "FEB",
      "numberOfPeople": "10",
      "place": "36 Guild Street London, UK",
    },
    {
      "title": "Summer Music Festival",
      "image": event2Path,
      "date": "15",
      "month": "JUL",
      "numberOfPeople": "5000",
      "place": "Sunset Beach, Miami, FL"
    },
    {
      "title": "Classical Symphony Performance",
      "image": event3Path,
      "date": "5",
      "month": "OCT",
      "numberOfPeople": "100",
      "place": "Art Gallery, New York, NY"
    },
    {
      "title": "Jazz Night Live",
      "image": event4Path,
      "date": "20",
      "month": "MAY",
      "numberOfPeople": "800",
      "place": "Convention Center, San Francisco, CA"
    },
    {
      "title": "Night Under the Stars",
      "image": event5Path,
      "date": "25",
      "month": "AUG",
      "numberOfPeople": "200",
      "place": "City Park Amphitheater, Los Angeles, CA"
    }
  ];

  static const nearbyYou = [
    {
      "title": "Electronica Dance Party",
      "image": event5Path,
      "date": "7",
      "month": "JAN",
      "numberOfPeople": "800",
      "place": "Club X, Miami, FL"
    },
    {
      "title": "Hip-Hop Showcase",
      "image": event4Path,
      "date": "14",
      "month": "APR",
      "numberOfPeople": "200",
      "place": "The Arena, New York, NY"
    },
    {
      "title": "Latin Music Fiesta",
      "image": event1Path,
      "date": "22",
      "month": "AUG",
      "numberOfPeople": "1200",
      "place": "Fiesta Plaza, Los Angeles, CA"
    },
    {
      "title": "Reggae Vibes Night",
      "image": event3Path,
      "date": "5",
      "month": "OCT",
      "numberOfPeople": "500",
      "place": "Reggae Lounge, Kingston, Jamaica"
    },
  ];
}
