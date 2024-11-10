import 'package:mid_project_3e/core/class/crud.dart';
import 'package:mid_project_3e/link_api.dart';

class TestData {
  Crud crud;
  TestData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.test, {});
    response.fold((l) => l, (r) => r);
  }
}
