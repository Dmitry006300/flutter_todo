import 'package:flutter/material.dart';
import 'package:flutter_todo/page/homepage.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
//HIVE
  await Hive.initFlutter();
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'TO DO'),
    );
  }
}
