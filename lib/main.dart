import 'package:counter_app/app/modules/first/view/first_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const CounteApp());
}

class CounteApp extends StatelessWidget {
  const CounteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Birinchi Tirkeme',
      // theme: ThemeData(
      //   primarySwatch: Colors.red,
      // ),
      home: FirstView(),
    );
  }
}
