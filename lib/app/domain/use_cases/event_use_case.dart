import 'package:leadsdoit_tz/app/domain/repositories/event_repository.dart';
import 'package:leadsdoit_tz/app/domain/results/get_events_result.dart';

class EventUseCase {
  final EventsRepository repository;

  EventUseCase({
    required this.repository,
  });

  Future<GetEventsResult> getEvents() async {
    final result = await repository.getEvents();

    return result;
  }
}
