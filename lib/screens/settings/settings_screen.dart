import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/providers/temperature_unit_provider.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = ref.watch(temperatureUnitProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change temperature unit'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Active temperature unit: ${isSelected ? 'Celsius' : 'Fahrenheit'}',
              ),
              Switch.adaptive(
                value: isSelected,
                onChanged: (value) {
                  ref.read(temperatureUnitProvider.notifier).state = value;
                },
              ),
              const Text(
                'If you want to change the temperature unit, please click the switch button above.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
