import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/main/app.dart';
import 'package:pokedex/main/di.dart';
import 'package:pokedex/main/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  AppDI.config();

  runApp(const PokeDexApp());
}
