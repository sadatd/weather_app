import 'package:flutter/material.dart';

class CurrentTemperatureWidget extends StatelessWidget {
  const CurrentTemperatureWidget({
    super.key,
    required this.temp,
    this.isCelsius = true,
  });

  final double temp;
  final bool isCelsius;

  @override
  Widget build(BuildContext context) {
    // Convert the temperature to Celsius or Fahrenheit
    final newTemp = isCelsius ? temp : (temp * 9 / 5) + 32;
    return isCelsius
        ? Text(
            'Temp: $newTemp°C',
            style: const TextStyle(fontSize: 18),
          )
        : Text(
            'Max: $newTemp°F',
            style: const TextStyle(fontSize: 18),
          );
  }
}