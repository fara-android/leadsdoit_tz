import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leadsdoit_tz/app/domain/entites/event_entity.dart';

import '../../../domain/use_cases/event_use_case.dart';

part 'get_events_cubit.freezed.dart';

class GetEventsCubit extends Cubit<GetEventsState> {
  final EventUseCase useCase;
  GetEventsCubit({
    required this.useCase,
  }) : super(const GetEventsState.initial()) {
    getEvents();
  }

  Future<void> getEvents() async {
    emit(const GetEventsState.loading());
    final result = await useCase.getEvents();

    if (result.error == null) {
      emit(GetEventsState.success(result.events!));
    } else {
      emit(GetEventsState.failed(result.error!.message));
    }
  }
}

@freezed
class GetEventsState with _$GetEventsState {
  const factory GetEventsState.initial() = _Initial;
  const factory GetEventsState.loading() = _Loading;
  const factory GetEventsState.success(List<EventEntity> events) = _Success;
  const factory GetEventsState.failed(String message) = _Failed;
}
