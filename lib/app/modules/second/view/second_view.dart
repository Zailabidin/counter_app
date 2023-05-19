import 'package:counter_app/app/modules/first/controller/first_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondView extends StatelessWidget {
  SecondView();
  final _firstController = Get.put<FirstController>(FirstController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Тапшырма -2',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                width: 360,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'сан:${_firstController.san.value}',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      'san',
                      style: const TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey,
            ),
            width: 360,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'сан2:',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'san',
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
