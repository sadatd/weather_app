import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/providers/temperature_unit_provider.dart';
import 'package:weather_app/providers/weather_city_provider.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/screens/home/widgets/detailed_temperature_widget.dart';
import 'package:weather_app/screens/home/widgets/not_found_city_widget.dart';

class ShowCityWeatherWidget extends ConsumerWidget {
  const ShowCityWeatherWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherAsyncValue = ref.watch(weatherProvider);
    final cityName = ref.watch(weatherCityProvider);
    final isCelsius = ref.watch(temperatureUnitProvider);
    return weatherAsyncValue.when(
      data: (weather) {
        return Padding(
          padding: const EdgeInsets.all(28.0),
          child: DetailedTemperatureWidget(
            weather: weather,
            isCelsius: isCelsius,
            cityName: cityName,
            ref: ref,
          ),
        );
      },
      loading: () => const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 18.0),
          child: CircularProgressIndicator(),
        ),
      ),
      error: (err, stack) => Center(
        child: CityNotFoundWidget(
          cityName: cityName,
        ),
      ),
    );
  }
}