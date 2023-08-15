import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sidebar_controller.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../common/contants.dart';
import '../../../routes/app_pages.dart';

class SidebarView extends GetView<SidebarController> {
  const SidebarView({
    super.key,
    this.statePage,
  });

  final String? statePage;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SidebarController());

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: primaryColor,
            ),
            accountName: Text(
              "Utah Expert",
              style: textInter.copyWith(
                fontWeight: extrabold,
              ),
            ),
            accountEmail: Text(
              "xxx@gmail.com",
              style: textInter.copyWith(),
            ),
            // currentAccountPicture: CircleAvatar(
            //   child: ClipOval(
            //     child: Image.asset(
            //       "assets/pictures/profil.png",
            //       width: 120.0,
            //       height: 120.0,
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),
          ),
          Container(
            color: statePage == "home" ? primaryColor : whiteColor,
            child: ListTile(
              leading: Icon(
                Icons.home_filled,
                color: statePage == "home" ? whiteColor : primaryColor,
              ),
              title: Text(
                "Home",
                style: textInter.copyWith(
                  fontWeight: superBold,
                  color: statePage == "home" ? whiteColor : primaryColor,
                ),
              ),
              onTap: () => Get.offAllNamed(Routes.HOME),
            ),
          ),
          Container(
            color: statePage == "cart" ? primaryColor : whiteColor,
            child: ListTile(
              leading: Icon(
                Icons.card_travel_rounded,
                color: statePage == "cart" ? whiteColor : primaryColor,
              ),
              title: Text(
                "Cart",
                style: textInter.copyWith(
                  fontWeight: superBold,
                  color: statePage == "cart" ? whiteColor : primaryColor,
                ),
              ),
              onTap: () => Get.offAllNamed(Routes.CART),
            ),
          ),
          Container(
            color: statePage == "profile" ? primaryColor : whiteColor,
            child: ListTile(
              leading: Icon(
                Icons.person_sharp,
                color: statePage == "profile" ? whiteColor : primaryColor,
              ),
              title: Text(
                "Profile",
                style: textInter.copyWith(
                  fontWeight: superBold,
                  color: statePage == "profile" ? whiteColor : primaryColor,
                ),
              ),
              onTap: () => Get.offAllNamed(Routes.PROFILE),
            ),
          ),
          Container(
            color: statePage == "chat" ? primaryColor : whiteColor,
            child: ListTile(
              leading: Icon(
                Icons.chat_rounded,
                color: statePage == "chat" ? whiteColor : primaryColor,
              ),
              title: Text(
                "Chat Us",
                style: textInter.copyWith(
                  fontWeight: superBold,
                  color: statePage == "chat" ? whiteColor : primaryColor,
                ),
              ),
              onTap: () => Get.offAllNamed(Routes.CHAT_US),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.logout_rounded,
              color: primaryColor,
            ),
            title: Text(
              "Logout",
              style: textInter.copyWith(
                fontWeight: superBold,
                color: primaryColor,
              ),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: whiteColor,
                  title: Text(
                    'Konfirmasi',
                    style: textInter.copyWith(
                      fontWeight: extrabold,
                      color: primaryColor,
                    ),
                  ),
                  content: Text(
                    'Apakah Anda yakin ingin keluar dari aplikasi?',
                    style: textInter.copyWith(
                      fontWeight: extrabold,
                      color: primaryColor,
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Get.back(),
                      child: Text(
                        'Tidak',
                        style: textInter.copyWith(
                          fontWeight: extrabold,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // controller.doLogout()
                      },
                      child: Text(
                        'Ya',
                        style: textInter.copyWith(
                          fontWeight: extrabold,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
