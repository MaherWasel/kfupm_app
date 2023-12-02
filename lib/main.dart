import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/StartingApp.dart';
import 'package:kfupm_app/features/authentication/presentation/login_screen.dart';
import 'package:kfupm_app/features/home/presentation/services/extraServices.dart';
import 'package:kfupm_app/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(
    child: MaterialApp(home:  StartingAppScreen()),
  ));
}
