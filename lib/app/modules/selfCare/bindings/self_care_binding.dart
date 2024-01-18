import 'package:get/get.dart';

import '../controllers/self_care_controller.dart';

class SelfCareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelfCareController>(
      () => SelfCareController(),
    );
  }
}
