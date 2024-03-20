import 'package:flutter_riverpod/flutter_riverpod.dart';

final temperatureUnitProvider = StateProvider<bool>((ref) {
  // TODO: Read the user's preference from the local storage
  // Return true for Celsius and false for Fahrenheit
  return true; // Assuming Celsius is the default unit
});