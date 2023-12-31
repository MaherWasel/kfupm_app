import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/StartingApp.dart';

import 'package:kfupm_app/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  runApp(const ProviderScope(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartingAppScreen()),
  ));
}
