import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/providers/weather_city_provider.dart';
import 'package:weather_app/providers/weather_repository_provider.dart';


final weatherProvider = FutureProvider<Weather>((ref) async {
  final weatherRepository = ref.watch(weatherRepositoryProvider);
  final cityName = ref.watch(weatherCityProvider);
  try {
    // Fetch weather data from the repository
    final weatherData = await weatherRepository.fetchWeather(cityName);
    return weatherData;
  } catch (e) {
    // Handle any errors that occur during the fetch
    throw Exception('Failed to fetch weather: $e');
  }
});

