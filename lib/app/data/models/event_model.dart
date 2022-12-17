import 'package:leadsdoit_tz/app/domain/entites/event_entity.dart';

extension CategoryJsonModel on EventEntity {
  EventEntity fromJson(dynamic data) {
    return EventEntity(
      legaueName: data['strLeague'],
      date: DateTime.tryParse(data['strTimestamp']),
      status: data['strStatus'],
      homeTeam: data['strHomeTeam'],
      awayTeam: data['strAwayTeam'],
      homeScore: data['intHomeScore'],
      awayScore: data['intAwayScore'],
    );
  }
}
