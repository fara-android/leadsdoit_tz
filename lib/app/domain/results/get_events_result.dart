import 'package:leadsdoit_tz/app/domain/entites/event_entity.dart';

import '../../core/app_error.dart';

class GetEventsResult {
  GetEventsResult({
    this.error,
    this.events,
  });

  final AppError? error;
  final List<EventEntity>? events;

  @override
  String toString() => 'RepoAuthResult(error: $error, result: $events)';
}
