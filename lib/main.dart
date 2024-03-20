import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pmfilmes/app.dart';
import 'package:pmfilmes/firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const Aplicacao());
}
