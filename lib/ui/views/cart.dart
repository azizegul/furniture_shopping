import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping/ui/views/checkout.dart';
import 'package:furniture_shopping/ui/views/product.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'favorite.dart';
import 'header.dart';
import 'home.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildHeaderCart("assets/images/back.png", "My Cart"),
          Flexible(
            child: ListView(
              children: [
                buildListViewCart(
                    "assets/images/coffetable.png", "Coffee Table", "50"),
                buildDivider(),
                buildListViewCart(
                    "assets/images/coffechair.png", "Coffee Chair", "20"),
                buildDivider(),
                buildListViewCart(
                    "assets/images/minimalstand.png", "Minimal Stand", "25"),
                buildDivider(),
              ],
            ),
          ),
          buildCartBar("assets/images/next.png"),
          const SizedBox(height: 20),
          buildTitlePrice("Total:", "95"),
          GestureDetector(
            onTap: () => Get.to(() => const CheckOut()),
            child: buildButton("Check out", 350, 60)),
        ],
      ),
    );
  }
}

Widget buildListViewCart(String photoUrl, String title, String price) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 100,
        height: 100,
        margin: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(photoUrl),
            fit: BoxFit.fill,
          ),
          color: const Color(0xFFE0E0E0),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 19,
            child: Text(
              title,
              style: const TextStyle(
                  color: Color(0xFF606060),
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            width: 57,
            height: 22,
            child: Text(
              price,
              style: const TextStyle(
                  color: Color(0xFF303030),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5),
          Container(
              height: 30,
              width: 113,
              child: buildItemNumberButton(
                  "assets/images/Eksi.png", "01", "assets/images/Arti.png")),
        ],
      ),
      const Spacer(),
      Column(
        children: [
          Container(
            width: 20,
            height: 20,
            margin: const EdgeInsets.only(right: 26),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: const Color(0xFFFFFFFF),
              image: const DecorationImage(
                  image: AssetImage("assets/images/cancel.png"),
                  fit: BoxFit.fill),
            ),
          ),
          const SizedBox(height: 45),
        ],
      ),
    ],
  );
}

Widget buildHeaderCart(String photoUrl, String title) {
  return Container(
    width: 375,
    height: 44,
    margin: const EdgeInsets.only(top: 44),
    child: Row(
      children: [
        Container(
          width: 17,
          height: 17,
          padding: const EdgeInsets.only(top: 17.67, left: 17.67),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(photoUrl),
            ),
          ),
        ),
        const SizedBox(width: 47),
        Container(
          width: 255,
          height: 20,
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: Text(
            title,
            style: TextStyle(
                color: Color(0xFF303030),
                fontSize: 16,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        // SizedBox(width: 26.17),
      ],
    ),
  );
}

Widget buildCartBar(String photoUrl) {
  return Stack(
    children: [
      Container(
        width: 335,
        height: 44,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            const Text(
              "Enter your promo code",
              style: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      const Spacer(),
      Container(
        margin: const EdgeInsets.only(left: 331),
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(photoUrl),
            fit: BoxFit.scaleDown,
          ),
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ],
  );
}

Widget buildTitlePrice(String title, String price) {
  return Container(
    width: 350,
    height: 27,
    // color: Colors.black,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 51,
          height: 27,
          child: Text(
            title,
            style: const TextStyle(
                color: Color(0xFF808080),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        Spacer(),
        Container(
          width: 71,
          height: 27,
          child: Text(
            price,
            style: const TextStyle(
                color: Color(0xFF303030),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
