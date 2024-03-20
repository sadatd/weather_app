import 'package:flutter/material.dart';

class MinMaxTemperatureWidget extends StatelessWidget {
  const MinMaxTemperatureWidget({
    super.key,
    required this.tempMax,
    required this.tempMin,
    this.isCelsius = true,
  });

  final double tempMax;
  final double tempMin;
  final bool isCelsius;

  @override
  Widget build(BuildContext context) {
    // Convert the temperature to Celsius or Fahrenheit
    final tempNewMax = isCelsius ? tempMax : (tempMax * 9 / 5) + 32;
    final tempNewMin = isCelsius ? tempMin : (tempMin * 9 / 5) + 32;
    return isCelsius
        ? Text(
            'Max: $tempNewMax°C, Min: $tempNewMin°C',
            style: const TextStyle(fontSize: 18),
          )
        : Text(
            'Max: $tempNewMax°F, Min: $tempNewMin°F',
            style: const TextStyle(fontSize: 18),
          );
  }
}