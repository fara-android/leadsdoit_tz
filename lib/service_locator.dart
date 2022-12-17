import 'package:get_it/get_it.dart';
import 'package:leadsdoit_tz/app/data/repositories/events/events_repo_impl.dart';
import 'package:leadsdoit_tz/app/domain/repositories/event_repository.dart';
import 'package:leadsdoit_tz/app/domain/use_cases/event_use_case.dart';
import 'package:leadsdoit_tz/app/presentation/cubits/get_events_cubit/get_events_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app/data/repositories/app_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(
    () => sharedPreferences,
  );
  // Repository
  sl.registerLazySingleton<AppRepository>(
    () => AppRepository(),
  );
  sl.registerLazySingleton<EventsRepository>(
    () => EventsRepoImpl(repository: sl()),
  );

  // // UseCases
  sl.registerLazySingleton<EventUseCase>(
    () => EventUseCase(
      repository: sl(),
    ),
  );

  // // Bloc / Cubit
  sl.registerFactory(
    () => GetEventsCubit(
      useCase: sl(),
    ),
  );
}
