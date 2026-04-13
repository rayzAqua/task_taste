part of 'injection_container_module.dart';

final sl = GetIt.instance;

Future<void> initSl() async {
  await _common();
}

Future<void> _common() async {
  final SharedPreferences preferences = await SharedPreferences.getInstance();

  sl
    ..registerLazySingleton(
      () => SharedPreferencesService(preferences: preferences),
    )
    ..registerFactory(() => IntSelectBloc())
    ..registerFactory(() => DoubleSelectBloc())
    ..registerFactory(() => BoolSelectBloc())
    ..registerFactory(() => StringSelectBloc());
}

Future<void> reset() async {
  await sl.reset(dispose: true);
  await initSl();
  await sl.allReady();
}
