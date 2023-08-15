import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../sidebar/views/sidebar_view.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidebarView(statePage: 'profile'),
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Center(
        child: Text(
          'ProfileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
