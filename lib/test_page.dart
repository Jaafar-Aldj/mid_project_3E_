import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mid_project_3e/controller/test_controller.dart';
import 'package:mid_project_3e/core/class/status_request.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
      body: GetBuilder<TestController>(builder: (controller) {
        if (controller.statusRequest == StatusRequest.loading) {
          return const Center(
            child: Text("loading"),
          );
        } else if (controller.statusRequest == StatusRequest.offlinefailure) {
          return const Center(
            child: Text("Offline"),
          );
        } else if (controller.statusRequest == StatusRequest.serverfailure) {
          return const Center(
            child: Text("Serverfailure"),
          );
        } else {
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Text("${controller.data}");
            },
            itemCount: controller.data.length,
          );
        }
      }),
    );
  }
}
