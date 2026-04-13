import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_taste/bootstrap.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:task_taste/core/di/injection_container_module.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await initSl();
  await sl.allReady();

  runApp(const TaskTaste());

  WidgetsBinding.instance.addPostFrameCallback((_) {
    FlutterNativeSplash.remove();
  });
}
