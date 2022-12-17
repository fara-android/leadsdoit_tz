import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_entity.freezed.dart';

@freezed
class EventEntity with _$EventEntity {
  factory EventEntity({
    String? legaueName,
    DateTime? date,
    String? status,
    String? homeTeam,
    String? awayTeam,
    int? homeScore,
    int? awayScore,
  }) = _EventEntity;
}
