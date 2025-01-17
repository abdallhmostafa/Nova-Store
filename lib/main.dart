import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nova_store/core/app/app_bloc_observer.dart';
import 'package:nova_store/core/app/env.variables.dart';
import 'package:nova_store/core/di/dependency_injection.dart';
import 'package:nova_store/core/helper/secure_storage_helper.dart';
import 'package:nova_store/core/services/shared_pref/shared_pref.dart';
import 'package:nova_store/nove_store.dart';

Future<void> main() async {
  await setup();
  final initialRoute =
      await serviceLocator.get<SecureStorageHelper>().initialRoute();
  runApp(NovaStore(initialRoute: initialRoute));
}

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  setupServiceLocator();

  await Future.wait([
    EnvVariable.instance.init(env: EnvTypeEnum.dev),
    Firebase.initializeApp(),
    SharedPref.instantiatePreferences(),
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    ),
  ]);
}
