import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/services/weather_api_service.dart';
import 'package:weather_app/repositories/weather_repository.dart';
import 'package:http/http.dart' as http;

// Provider for WeatherApiServices
final weatherApiServiceProvider = Provider<WeatherApiServices>((ref) {
  return WeatherApiServices(httpClient: http.Client());
});

// Provider for WeatherRepository with WeatherApiServices dependency
final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  // Get WeatherApiServices from the provider
  final WeatherApiServices weatherApiServices = ref.watch(weatherApiServiceProvider);

  // Pass WeatherApiServices to WeatherRepository
  return WeatherRepository(weatherApiServices: weatherApiServices);
});