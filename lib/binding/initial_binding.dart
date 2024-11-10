import 'package:get/get.dart';
import 'package:mid_project_3e/core/class/crud.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
