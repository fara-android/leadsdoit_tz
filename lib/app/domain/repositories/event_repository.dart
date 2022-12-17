import 'package:leadsdoit_tz/app/domain/results/get_events_result.dart';

abstract class EventsRepository {
  Future<GetEventsResult> getEvents();
}
