import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../sidebar/views/sidebar_view.dart';
import '../controllers/chat_us_controller.dart';

class ChatUsView extends GetView<ChatUsController> {
  const ChatUsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidebarView(statePage: 'chat'),
      appBar: AppBar(
        title: const Text('ChatUsView'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Center(
        child: Text(
          'ChatUsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
