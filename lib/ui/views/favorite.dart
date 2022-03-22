import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:furniture_shopping/ui/views/product.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'cart.dart';
import 'header.dart';
import 'home.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildHeader("assets/images/search.png","Favorites","assets/images/cart.png"),
          Flexible(
            child: ListView(
              children: [
                buildListView(
                    "assets/images/coffetable.png", "Coffee Table", "50"),
                buildDivider(),
                buildListView(
                    "assets/images/coffechair.png", "Coffee Chair", "20"),
                buildDivider(),
                buildListView(
                    "assets/images/minimalstand.png", "Minimal Stand", "25"),
                buildDivider(),
                buildListView(
                    "assets/images/minimaldesk.png", "Minimal Desk", "50"),
                buildDivider(),
                buildListView(
                    "assets/images/minimallamb.png", "Minimal Lamp", "12"),
                buildDivider(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Get.to(() => Cart()),
            child: buildButton("Add all to my cart", 334, 50)),
          Row(
            children: [
              navigationBar("assets/images/bar1.png"),
              navigationBar("assets/images/bar2.png"),
              navigationBar("assets/images/bar3.png"),
              navigationBar("assets/images/bar4.png"),
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildListView(String photoUrl, String title, String price) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
      const SizedBox(width: 20),
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
          Container(
            width: 34,
            height: 34,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: const Color(0xFFE0E0E0),
              image: const DecorationImage(
                  image: AssetImage("assets/images/cartblack.png"),
                  fit: BoxFit.scaleDown),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget buildDivider() {
  return Row(
    children: [
      Expanded(
          child: Divider(
        thickness: 1,
        color: Color(0xFFF0F0F0),
        endIndent: 20,
        indent: 20,
      )),
    ],
  );
}

Widget buildButton(String title, double width, double height) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Color(0xFF242424),
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Color(0xFF30303040).withOpacity(0.25),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Center(
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
