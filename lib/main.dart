// import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'app/app.dart';

Future<void> main() async {
  //init flutter
  WidgetsFlutterBinding.ensureInitialized();

  /**
   * init hive
   */
  var dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  await Hive.openBox("prefs");
  /**
   * 
   */
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}
