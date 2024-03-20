import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/screens/home/widgets/current_temperature_widget.dart';
import 'package:weather_app/screens/home/widgets/max_min_temperature_widget.dart';

class DetailedTemperatureWidget extends StatelessWidget {
  const DetailedTemperatureWidget({
    super.key,
    required this.weather,
    required this.isCelsius,
    required this.cityName,
    required this.ref,
  });

  final Weather weather;
  final bool isCelsius;
  final String cityName;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          weather.name,
          style: const TextStyle(fontSize: 32),
        ),
        CurrentTemperatureWidget(
          temp: weather.temp,
          isCelsius: isCelsius,
        ),
        Image.network('http://openweathermap.org/img/w/${weather.icon}.png'),
        Text(weather.description.toUpperCase()),
        Text(
          '${weather.lastUpdated.hour}:${weather.lastUpdated.minute}',
        ),
        MinMaxTemperatureWidget(
          tempMax: weather.tempMax,
          tempMin: weather.tempMin,
          isCelsius: isCelsius,
        ),
        cityName.isEmpty
            ? const SizedBox()
            : IconButton(
                onPressed: () {
                  ref.invalidate(weatherProvider);
                },
                icon: const Icon(Icons.refresh),
              ),
      ],
    );
  }
}
