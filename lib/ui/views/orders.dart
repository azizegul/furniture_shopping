import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping/ui/views/profile.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'cart.dart';
import 'favorite.dart';
import 'header.dart';
import 'home.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildHeaderCart("assets/images/back.png", "My Orders"),
          SizedBox(height: 18),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                buildTextSlider("Delivered", 0xFF242424),
                SizedBox(width: 45),
                buildTextSlider("Processing", 0xFF999999),
                SizedBox(width: 45),
                buildTextSlider("Canceled", 0xFF999999),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
              child: ListView(
            children: [
              buildSizedBox(),
              SizedBox(height: 20),
              buildSizedBox(),
              buildSizedBox(),
              buildSizedBox(),
            ],
          )),
          Row(
            children: [
              GestureDetector(
                  onTap: () => Get.to(() => Home()),
                  child: navigationBar("assets/images/bar1.png")),
              GestureDetector(
                  onTap: () => Get.to(() => Favorite()),
                  child: navigationBar("assets/images/bar2.png")),
              navigationBar("assets/images/bar3.png"),
              GestureDetector(
                  onTap: () => Get.to(() => Profile()),
                  child: navigationBar("assets/images/bar4.png")),
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildTextSlider(String text, int color) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: Color(color),
    ),
  );
}

Widget buildDividerOrderForm() {
  return Row(
    children: [
      Expanded(
          child: Divider(
        thickness: 4,
        color: Color(0xFFF0F0F0),
      )),
    ],
  );
}

Widget buildOrdersPrice(String title, String price) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Text(
          title,
          style: const TextStyle(
              color: Color(0xFF808080),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
      Spacer(),
      Container(
        child: Text(
          price,
          style: const TextStyle(
              color: Color(0xFF303030),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      ),
    ],
  );
}

Widget buildDetailButton() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 100,
        height: 36,
        decoration: const BoxDecoration(
          color: Color(0xFF242424),
        ),
        child: const Center(
          child: Text(
            "Detail",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      Spacer(),
      Container(
        width: 69,
        height: 22,
        child: Text(
          "Delivered",
          style: const TextStyle(
              color: Color(0xFF27AE60),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
    ],
  );
}

Widget buildSizedBox() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: SizedBox(
      width: 350,
      height: 175,
      child: Column(
        children: [
          buildOrdersPrice("Order No:238562312", "20/03/2020"),
          SizedBox(height: 10),
          buildDividerOrderForm(),
          SizedBox(height: 15),
          buildOrdersPrice("Quantity: 03", "Total Amount: 150"),
          SizedBox(height: 20),
          buildDetailButton(),
        ],
      ),
    ),
  );
}
