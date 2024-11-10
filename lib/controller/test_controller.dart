import 'package:get/get.dart';
import 'package:mid_project_3e/core/class/status_request.dart';
import 'package:mid_project_3e/core/functions/handling_data_control.dart';
import 'package:mid_project_3e/data/datasource/remote/test_data.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];
  late StatusRequest statusRequest;
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = testData.getData();
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      data.addAll(response['data']);
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
