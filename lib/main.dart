import 'package:flutter/material.dart';
import 'package:counter_app/counter_page.dart';

import 'ekinchi_bet.dart';

void main() {
  runApp(const CounteApp());
}

class CounteApp extends StatelessWidget {
  const CounteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Birinchi Tirkeme',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterPage(),
    );
  }
}
