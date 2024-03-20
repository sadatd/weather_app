import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/providers/weather_city_provider.dart';
import 'package:weather_app/providers/weather_provider.dart';

class InputCityWidget extends ConsumerStatefulWidget {
  const InputCityWidget({
    super.key,
  });

  @override
  ConsumerState<InputCityWidget> createState() => _InputCityWidgetState();
}

class _InputCityWidgetState extends ConsumerState<InputCityWidget> {
  final _cityNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _cityNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: _cityNameController,
              validator: (String? input) {
                if (input == null || input.trim().length < 2) {
                  return 'Please enter a city name with at least 2 characters.';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Enter city name',
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: _onSubmit,
          ),
        ],
      ),
    );
  }

  void _onSubmit() {
    // Weather city provider string is set to the value of the text field
    if (_formKey.currentState!.validate()) {
      ref.read(weatherCityProvider.notifier).state = _cityNameController.text;
      ref.invalidate(weatherProvider);
    }
  }
}
