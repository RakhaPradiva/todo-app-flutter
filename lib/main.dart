import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo/home.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("todobox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ToDo App",
      home: const Home(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
