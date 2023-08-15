import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_crm_gangudin/app/common/contants.dart';
import 'package:mobile_crm_gangudin/app/routes/app_pages.dart';

import '../../sidebar/views/sidebar_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<String> ImageCategory = <String>[
      'assets/pictures/watch.png',
      'assets/pictures/glasses.png',
      'assets/pictures/bag.png',
      'assets/pictures/shirt.png',
      'assets/pictures/shoe.png',
    ];
    final List<Color> ColorImageCategory = [
      white2Color,
      gray3Color,
      gray3Color,
      gray3Color,
      gray3Color,
    ];
    final List<Color> ColorBgCategory = [
      primaryColor,
      gray2Color,
      gray2Color,
      gray2Color,
      gray2Color,
    ];

    return Scaffold(
      backgroundColor: whiteColor,
      drawer: const SidebarView(statePage: 'home'),
      drawerScrimColor: Colors.black,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.SEARCH);
            },
            icon: const Icon(
              Icons.search,
              color: whiteColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 27),
            Text(
              'Halo Utah',
              style: textInter.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 9),
            Text(
              'Let’s start shopping!',
              style: textInter.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 18),
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 15),
                    height: 130,
                    width: 285,
                    decoration: BoxDecoration(
                      color: gray2Color,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/pictures/card_promo_1.png",
                        width: 120.0,
                        height: 120.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Categories',
                  style: textInter.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: textInter.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 64,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ImageCategory.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: Material(
                      color: ColorBgCategory[index],
                      borderRadius: BorderRadius.circular(15),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 64,
                          width: 64,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: gray3Color)),
                          child: Image.asset(
                            ImageCategory[index],
                            width: 25.0,
                            height: 25.0,
                            color: ColorImageCategory[index],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: 5,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  mainAxisExtent: 188.58,
                ),
                itemBuilder: (context, index) {
                  return Material(
                    color: white2Color,
                    elevation: 1,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        margin: const EdgeInsets.all(5),
                        height: 340,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                child: SizedBox(
                                  height: 20.34,
                                  width: 20.34,
                                  child: Image.asset(
                                    "assets/pictures/icon_heart.png",
                                    width: 120.0,
                                    height: 120.0,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 109.08,
                              width: 162.68,
                              child: Image.asset(
                                "assets/pictures/redmi4.png",
                                width: 120.0,
                                height: 120.0,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Redmi Note 4',
                                style: textInter.copyWith(
                                  fontSize: 14,
                                  fontWeight: medium,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Rp. 45,000',
                                style: textInter.copyWith(
                                  fontSize: 12.23,
                                  fontWeight: extrabold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
