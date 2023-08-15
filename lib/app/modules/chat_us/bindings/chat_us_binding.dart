import 'package:get/get.dart';

import '../controllers/chat_us_controller.dart';

class ChatUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatUsController>(
      () => ChatUsController(),
    );
  }
}
