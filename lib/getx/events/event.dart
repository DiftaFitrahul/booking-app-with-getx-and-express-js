import 'package:booking_app/view/constants/event/events_filter.dart';
import 'package:get/get.dart';

class EventController extends GetxController {
  Rx<EventFilter> selectedFilterEvent = EventFilter.upcoming.obs;

  void changeSelectedFilterEvent(EventFilter filter) {
    selectedFilterEvent.value = filter;
  }
}
