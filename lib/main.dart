import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hubmaster/90_hub_gym.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const HubGym());
}
