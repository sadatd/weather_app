import 'package:flutter/material.dart';

class CityNotFoundWidget extends StatelessWidget {
  const CityNotFoundWidget({super.key, required this.cityName});
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Text('City not found: $cityName'),
          const Icon(Icons.error),
          const Text('Please enter a valid city name.'),
        ],
      ),
    );
  }
}
