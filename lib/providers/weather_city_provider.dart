import 'package:flutter_riverpod/flutter_riverpod.dart';

final weatherCityProvider = StateProvider<String>((ref) {
  // TODO: Read the user's preference from the local storage
  // Return the user's last selected city
  return 'London'; // Assuming London is the default city
});