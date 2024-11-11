import 'package:bitcion_app/Models/Coin.dart';
import 'package:bitcion_app/Models/OneCoin.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'HomePage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [CoinSchema],
    directory: directory.path,
  ); // Open the database
  runApp(MyApp(isar: isar)); // Pass Isar instance to the app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this. isar});
  final Isar isar;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1f2630),
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(isar: isar),
    );
  }
}

