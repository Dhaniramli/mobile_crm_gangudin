import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_crm_gangudin/app/common/contants.dart';

import '../../sidebar/views/sidebar_view.dart';
import '../controllers/chat_us_controller.dart';

class ChatUsView extends GetView<ChatUsController> {
  const ChatUsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget chatInput() {
      return Form(
        // key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(
            right: 15.0,
            left: 15.0,
            bottom: 15.0,
            top: 1,
          ),
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(15),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    autocorrect: false,
                    obscureText: false,
                    maxLines: null,
                    // controller: controller.message,
                    decoration: const InputDecoration(
                      hintText: 'Ask anything...',
                      filled: true,
                      fillColor: whiteColor,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: whiteColor),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: whiteColor),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                    ),
                    cursorColor: primaryColor,
                    // validator: (value) {
                    //   if (value?.trim().isEmpty ?? true) {
                    //     return "";
                    //   }
                    //   return null;
                    // },
                  ),
                ),
                // const SizedBox(width: 10),
                Container(
                  height: 56,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/pictures/icon_send.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                // const SizedBox(width: 20),
                // GestureDetector(
                //   onTap: () {
                //     controller.newChat(controller.auth.currentUser!.uid, "dara",
                //         controller.message.text, "a@gmail.com");
                //     controller.message.clear();
                //   },
                //   child: Image.asset(
                //     'assets/pictures/icon_send.png',
                //     width: 24,
                //     height: 24,
                //   ),
                // )
              ],
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.all(15),
        child: ListView.builder(
          // controller: controller.scrollC,
          itemCount: 5,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "16 Agustus 2023",
                      style: textInter.copyWith(
                          fontSize: 13,
                          fontWeight: medium,
                          color: primaryColor),
                    ),
                  ),
                  // messages(context, map),
                ],
              );
            } else {
              // if (snapshot.data?.docs[index]["groupTime"] ==
              //     snapshot.data?.docs[index - 1]["groupTime"]) {
              //   return messages(context, map);
              // } else {
              //   return Column(
              //     children: [
              //       Text(
              //         "akslakslakslaks",
              //         style: textInter.copyWith(
              //             fontSize: 13,
              //             fontWeight: medium,
              //             color: primaryColor),
              //       ),
              //       messages(context, map),
              //     ],
              //   );
              // }
            }
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      drawer: const SidebarView(statePage: 'chat'),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text('ChatUsView'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(child: content()),
          chatInput(),
        ],
      ),
    );
  }
}

Widget messages(BuildContext context, Map<String, dynamic> map) {
  final controller = Get.put(ChatUsController());

  return Container(
    alignment: map['pengirim'] == 'pengirim'
        ? Alignment.centerRight
        : Alignment.centerLeft,
    margin: const EdgeInsets.only(top: 20),
    child: Column(
      crossAxisAlignment: map['pengirim'] == 'pengirim'
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: map['pengirim'] == 'pengirim'
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.8,
                ),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9), // Warna shadow
                      spreadRadius: 2, // Radius penyebaran shadow
                      blurRadius: 5, // Radius blur shadow
                      offset: map['pengirim'] == 'pengirim'
                          ? const Offset(-4, 4)
                          : const Offset(4, 4), // Posisi offset shadow (x, y)
                    ),
                  ],
                  color:
                      map['pengirim'] == 'pengirim' ? whiteColor : primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(25),
                      topRight: const Radius.circular(25),
                      bottomLeft: Radius.circular(
                          map['pengirim'] == 'pengirim' ? 25 : 0),
                      bottomRight: Radius.circular(
                          map['pengirim'] == 'pengirim' ? 0 : 25)),
                ),
                child: Text(
                  map["msg"],
                  style: textInter.copyWith(
                      fontSize: 13,
                      fontWeight: medium,
                      color: map['pengirim'] == 'pengirim'
                          ? primaryColor
                          : whiteColor),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          "${map['jm']}",
          style: textInter.copyWith(fontSize: 11, color: primaryColor),
        ),
      ],
    ),
  );
}
