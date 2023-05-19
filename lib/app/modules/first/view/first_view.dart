import 'dart:developer';

import 'package:counter_app/app/modules/first/controller/first_controller.dart';
import 'package:counter_app/app/modules/second/view/second_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstView extends StatelessWidget {
  FirstView({super.key});
  final _firstController = Get.put<FirstController>(FirstController());

  @override
  Widget build(BuildContext context) {
    log('buildCount ====>${_firstController.buildCount.value++}');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Couter App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondView(),
                  ),
                );
              },
              child: Container(
                width: 360,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'сан:',
                      style: TextStyle(fontSize: 24.0),
                    ),
                    Obx(
                      () => Text(
                        'san:${_firstController.san.value}',
                        style: const TextStyle(fontSize: 24.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => _firstController.kemituu(),
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () => _firstController.koshuu(),
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => SecondView());
              },
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.skip_next,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
