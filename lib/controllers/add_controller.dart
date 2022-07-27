import 'package:get/get.dart';

import '../constant.dart';
import '../modals/employee_modal.dart';

class Controller extends GetxController {
  static Controller instance = Get.find();

  uploadEmployee(String name, int period, int age,) async {
    try {
      User userUpload = User(age: age, name: name, workingPeriod: period);
      await firestore
          .collection('employee')
          .doc()
          .set(userUpload.toJason());
          
        Get.back();
    } catch (e) {
      Get.snackbar('error', e.toString());
    }
  }
}
