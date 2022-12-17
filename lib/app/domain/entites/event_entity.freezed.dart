// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventEntity {
  String? get legaueName => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get homeTeam => throw _privateConstructorUsedError;
  String? get awayTeam => throw _privateConstructorUsedError;
  int? get homeScore => throw _privateConstructorUsedError;
  int? get awayScore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventEntityCopyWith<EventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEntityCopyWith<$Res> {
  factory $EventEntityCopyWith(
          EventEntity value, $Res Function(EventEntity) then) =
      _$EventEntityCopyWithImpl<$Res, EventEntity>;
  @useResult
  $Res call(
      {String? legaueName,
      DateTime? date,
      String? status,
      String? homeTeam,
      String? awayTeam,
      int? homeScore,
      int? awayScore});
}

/// @nodoc
class _$EventEntityCopyWithImpl<$Res, $Val extends EventEntity>
    implements $EventEntityCopyWith<$Res> {
  _$EventEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? legaueName = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? homeTeam = freezed,
    Object? awayTeam = freezed,
    Object? homeScore = freezed,
    Object? awayScore = freezed,
  }) {
    return _then(_value.copyWith(
      legaueName: freezed == legaueName
          ? _value.legaueName
          : legaueName // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      homeTeam: freezed == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as String?,
      awayTeam: freezed == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as String?,
      homeScore: freezed == homeScore
          ? _value.homeScore
          : homeScore // ignore: cast_nullable_to_non_nullable
              as int?,
      awayScore: freezed == awayScore
          ? _value.awayScore
          : awayScore // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventEntityCopyWith<$Res>
    implements $EventEntityCopyWith<$Res> {
  factory _$$_EventEntityCopyWith(
          _$_EventEntity value, $Res Function(_$_EventEntity) then) =
      __$$_EventEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? legaueName,
      DateTime? date,
      String? status,
      String? homeTeam,
      String? awayTeam,
      int? homeScore,
      int? awayScore});
}

/// @nodoc
class __$$_EventEntityCopyWithImpl<$Res>
    extends _$EventEntityCopyWithImpl<$Res, _$_EventEntity>
    implements _$$_EventEntityCopyWith<$Res> {
  __$$_EventEntityCopyWithImpl(
      _$_EventEntity _value, $Res Function(_$_EventEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? legaueName = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? homeTeam = freezed,
    Object? awayTeam = freezed,
    Object? homeScore = freezed,
    Object? awayScore = freezed,
  }) {
    return _then(_$_EventEntity(
      legaueName: freezed == legaueName
          ? _value.legaueName
          : legaueName // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      homeTeam: freezed == homeTeam
          ? _value.homeTeam
          : homeTeam // ignore: cast_nullable_to_non_nullable
              as String?,
      awayTeam: freezed == awayTeam
          ? _value.awayTeam
          : awayTeam // ignore: cast_nullable_to_non_nullable
              as String?,
      homeScore: freezed == homeScore
          ? _value.homeScore
          : homeScore // ignore: cast_nullable_to_non_nullable
              as int?,
      awayScore: freezed == awayScore
          ? _value.awayScore
          : awayScore // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_EventEntity implements _EventEntity {
  _$_EventEntity(
      {this.legaueName,
      this.date,
      this.status,
      this.homeTeam,
      this.awayTeam,
      this.homeScore,
      this.awayScore});

  @override
  final String? legaueName;
  @override
  final DateTime? date;
  @override
  final String? status;
  @override
  final String? homeTeam;
  @override
  final String? awayTeam;
  @override
  final int? homeScore;
  @override
  final int? awayScore;

  @override
  String toString() {
    return 'EventEntity(legaueName: $legaueName, date: $date, status: $status, homeTeam: $homeTeam, awayTeam: $awayTeam, homeScore: $homeScore, awayScore: $awayScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventEntity &&
            (identical(other.legaueName, legaueName) ||
                other.legaueName == legaueName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam) &&
            (identical(other.awayTeam, awayTeam) ||
                other.awayTeam == awayTeam) &&
            (identical(other.homeScore, homeScore) ||
                other.homeScore == homeScore) &&
            (identical(other.awayScore, awayScore) ||
                other.awayScore == awayScore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, legaueName, date, status,
      homeTeam, awayTeam, homeScore, awayScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventEntityCopyWith<_$_EventEntity> get copyWith =>
      __$$_EventEntityCopyWithImpl<_$_EventEntity>(this, _$identity);
}

abstract class _EventEntity implements EventEntity {
  factory _EventEntity(
      {final String? legaueName,
      final DateTime? date,
      final String? status,
      final String? homeTeam,
      final String? awayTeam,
      final int? homeScore,
      final int? awayScore}) = _$_EventEntity;

  @override
  String? get legaueName;
  @override
  DateTime? get date;
  @override
  String? get status;
  @override
  String? get homeTeam;
  @override
  String? get awayTeam;
  @override
  int? get homeScore;
  @override
  int? get awayScore;
  @override
  @JsonKey(ignore: true)
  _$$_EventEntityCopyWith<_$_EventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
