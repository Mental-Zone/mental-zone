import 'package:get/get.dart';

import '../controllers/counseling_details_controller.dart';

class CounselingDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounselingDetailsController>(
      () => CounselingDetailsController(),
    );
  }
}
