import 'package:get/get.dart';
import 'package:uas_21312030/app/modules/singup/controllers/singup_controller.dart';

import 'package:uas_21312030/app/modules/singup/bindings/singup_binding.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(
      () => SignupController(),
    );
  }
}
