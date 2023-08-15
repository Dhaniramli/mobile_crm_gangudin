import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_crm_gangudin/app/common/contants.dart';

import '../../sidebar/views/sidebar_view.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      drawer: const SidebarView(statePage: 'cart'),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Material(
                    color: gray2Color,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        margin: const EdgeInsets.only(
                            bottom: 10, left: 15, right: 15),
                        padding: const EdgeInsets.all(16),
                        height: 115,
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 87,
                              width: 100,
                              decoration: BoxDecoration(
                                color: grayColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                "assets/pictures/redmi4.png",
                                width: 120.0,
                                height: 120.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Apple W-series 6',
                                    style: textInter.copyWith(
                                      fontSize: 14,
                                      fontWeight: medium,
                                      color: blackColor,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    'Rp. 45,000',
                                    style: textInter.copyWith(
                                      fontSize: 12,
                                      fontWeight: extrabold,
                                      color: blackColor,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: 35,
                                      width: 105,
                                      decoration: BoxDecoration(
                                        color: whiteColor,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: primaryColor,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.remove,
                                              size: 11,
                                              color: primaryColor,
                                            ),
                                          ),
                                          Text(
                                            '1',
                                            style: textInter.copyWith(
                                              fontSize: 13,
                                              fontWeight: medium,
                                              color: blackColor,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.add,
                                              size: 11,
                                              color: primaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 150,
            width: Get.width,
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: textInter.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Rp. 45,000',
                      style: textInter.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                          color: primaryColor),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 51,
                  width: Get.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      maximumSize: Size(Get.width, 51),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Buy Now',
                      style: textInter.copyWith(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
