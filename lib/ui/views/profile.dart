import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping/ui/views/orders.dart';
import 'package:furniture_shopping/ui/views/payment.dart';
import 'package:furniture_shopping/ui/views/reviews.dart';
import 'package:furniture_shopping/ui/views/shippingaddress.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'cart.dart';
import 'favorite.dart';
import 'header.dart';
import 'home.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildHeader(
              "assets/images/search.png", "Profile", "assets/images/go.png"),
          SizedBox(height: 18),
          buildProfil("assets/images/profilPicture.png", "Bruno Pham",
              "bruno203@gmail.com"),
          const SizedBox(height: 30),
          Expanded(
            child: ListView(
              addAutomaticKeepAlives: true,
              padding: EdgeInsets.all(20),
              children: [
                GestureDetector(
                  onTap: () => Get.to(() => Orders()),
                  child: buildList("My orders", "Already have 10 orders",
                      "assets/images/nextblack.png"),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () => Get.to(() => ShippingAddress()),
                  child: buildList("Shipping Addresses", "03 Addresses",
                      "assets/images/nextblack.png"),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () => Get.to(() => Payment()),
                  child: buildList("Payment Method", "You have 2 cards",
                      "assets/images/nextblack.png"),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () => Get.to(() => Reviews()),
                  child: buildList("My reviews", "Reviews for 5 items",
                      "assets/images/nextblack.png"),
                ),
                SizedBox(height: 15),
                buildList("Setting", "Notification, Password, FAQ, Contact",
                    "assets/images/nextblack.png"),
              ],
            ),
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

Widget buildProfil(String photoUrl, String name, String email) {
  return Row(
    children: [
      Container(
        width: 80,
        height: 80,
        margin: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(photoUrl),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 115,
            height: 27,
            child: Text(
              name,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            width: 139,
            height: 15,
            child: Text(
              email,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget buildList(String title, String description, String photoUrl) {
  return Container(
    width: 360,
    height: 80,
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 250,
                height: 25,
                child: Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color(0xFF242424),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                width: 250,
                height: 15,
                child: Text(
                  description,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 30),
        Container(
          width: 12,
          height: 15,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(photoUrl), fit: BoxFit.scaleDown)),
        ),
      ],
    ),
  );
}
