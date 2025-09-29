import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocalizationHelper {
  static Future<Locale> getLocaleFromLocation() async {
    try {
      Position pos = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      List<Placemark> placemarks =
          await placemarkFromCoordinates(pos.latitude, pos.longitude);
      String state = placemarks.first.administrativeArea ?? "";

      if (state.contains("Tamil")) return const Locale("ta");
      if (state.contains("Andhra") || state.contains("Telangana"))
        return const Locale("te");
      if (state.contains("Karnataka")) return const Locale("kn");
      if (state.contains("Kerala")) return const Locale("ml");
      if (state.contains("Delhi") ||
          state.contains("Uttar") ||
          state.contains("Madhya")) return const Locale("hi");

      return const Locale("en");
    } catch (_) {
      return const Locale("en");
    }
  }
}
