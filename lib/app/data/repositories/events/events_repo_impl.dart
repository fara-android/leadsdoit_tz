import 'package:leadsdoit_tz/app/domain/repositories/event_repository.dart';
import 'package:leadsdoit_tz/app/domain/results/get_events_result.dart';

import '../../../core/app_error.dart';
import '../app_repository.dart';

class EventsRepoImpl implements EventsRepository {
  final AppRepository repository;

  EventsRepoImpl({required this.repository});

  @override
  Future<GetEventsResult> getEvents() async {
    final result = await repository.eventsApi.getEvents();

    if (result.error == null) {
      return GetEventsResult(events: result.events!);
    } else {
      return GetEventsResult(
        error: AppError(
          message: result.error!.message,
          code: result.error!.code,
        ),
      );
    }
  }
}
