import 'package:dio/dio.dart';
import 'package:leadsdoit_tz/app/data/models/event_model.dart';
import 'package:leadsdoit_tz/app/domain/entites/event_entity.dart';
import 'package:leadsdoit_tz/app/domain/results/get_events_result.dart';

import '../../../core/app_error.dart';
import '../../helpers/catch_exception.dart';

class EventsApi {
  final Dio dio;
  EventsApi({required this.dio});

  Future<GetEventsResult> getEvents() async {
    try {
      final response = await dio.get('eventsnextleague.php?id=4328');
      return GetEventsResult(
        events: response.data['events']
            .map<EventEntity>(
              (json) => EventEntity().fromJson(json),
            )
            .toList(),
      );
    } catch (error) {
      return GetEventsResult(
        error: AppError(
          message: CatchException.convertException(error).message.toString(),
        ),
      );
    }
  }
}
