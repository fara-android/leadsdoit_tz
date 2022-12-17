import 'package:dio/dio.dart';
import 'package:leadsdoit_tz/app/data/data_sources/api_ds/events_api.dart';
import '../helpers/dio_settings.dart';

class AppRepository {
  AppRepository() {
    _dio = _getDio();

    /// ИНИЦИАЛИЗИЯ РЕПОЗИТОРИЕВ
    eventsApi = EventsApi(
      dio: _dio,
    );
   
  }

  late Dio _dio;
  late EventsApi eventsApi;

  Dio _getDio() {
    final apiSettings = DioSettings();
    return apiSettings.dio;
  }
}
