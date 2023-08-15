import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_crm_gangudin/app/common/contants.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 150),
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Welcome',
              style: textInter.copyWith(
                fontSize: 20,
                fontWeight: bold,
                color: primaryColor,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.center,
            child: Text(
              'New to our platform? Register an account now and join our community!',
              style: textInter.copyWith(
                fontSize: 16,
                fontWeight: regular,
                color: primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 67,
            child: TextFormField(
              onFieldSubmitted: (value) {},
              style: textInter.copyWith(color: primaryColor),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                label: Text(
                  'Your Email',
                  style: textInter.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                    color: grayColor,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(color: primaryColor, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(color: grayColor, width: 1),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                filled: true,
                fillColor: whiteColor,
                focusColor: primaryColor,
                hoverColor: primaryColor,
              ),
              cursorColor: primaryColor,
              textInputAction: TextInputAction.done,
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return 'Masukkan email';
              //   }
              //   return null;
              // },
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 67,
            child: Obx(
              () => TextFormField(
                onFieldSubmitted: (value) {},
                style: textInter.copyWith(color: primaryColor),
                obscureText: controller.isHidden1.value,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.isHidden1.value = !controller.isHidden1.value;
                    },
                    icon: Icon(
                      controller.isHidden1.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: gray3Color,
                    ),
                  ),
                  label: Text(
                    'Your Password',
                    style: textInter.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                      color: grayColor,
                    ),
                  ),
                  labelStyle: textInter.copyWith(color: primaryColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(color: primaryColor, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(color: grayColor, width: 1),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  filled: true,
                  fillColor: whiteColor,
                  focusColor: primaryColor,
                  hoverColor: primaryColor,
                ),
                cursorColor: primaryColor,
                textInputAction: TextInputAction.done,
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Masukkan password';
                //   }
                //   return null;
                // },
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 67,
            child: Obx(
              () => TextFormField(
                onFieldSubmitted: (value) {},
                style: textInter.copyWith(color: primaryColor),
                obscureText: controller.isHidden2.value,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.isHidden2.value = !controller.isHidden2.value;
                    },
                    icon: Icon(
                      controller.isHidden2.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: gray3Color,
                    ),
                  ),
                  label: Text(
                    'Confirm Your Password',
                    style: textInter.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                      color: grayColor,
                    ),
                  ),
                  labelStyle: textInter.copyWith(color: primaryColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(color: primaryColor, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(color: grayColor, width: 1),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  filled: true,
                  fillColor: whiteColor,
                  focusColor: primaryColor,
                  hoverColor: primaryColor,
                ),
                cursorColor: primaryColor,
                textInputAction: TextInputAction.done,
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Masukkan password';
                //   }
                //   return null;
                // },
              ),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Register',
              style: textInter.copyWith(
                color: whiteColor,
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
