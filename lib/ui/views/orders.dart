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
          buildHeaderCart(
              "assets/images/back.png", "My Orders"),
          SizedBox(height: 18),
          buildProfil("assets/images/profilPicture.png", "Bruno Pham",
              "bruno203@gmail.com"),
          SizedBox(height: 30),
          Container(
            width: 350,
            height: 175,
          ),
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