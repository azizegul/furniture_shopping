import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'favorite.dart';
import 'home.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 449,
                  height: 455,
                  margin: const EdgeInsets.only(left: 50),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/product.png"),
                          fit: BoxFit.fill),
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(45))),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 149, left: 20),
                  width: 64,
                  height: 192,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/Frame5.png"),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 53, left: 32),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/back.png"),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25),
                  child: const Text(
                    "Minimal Stand",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25),
                  child: const Text("50",
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 30,
                      )),
                ),
                Spacer(),
                buildItemNumberButton("assets/images/Eksi.png", "01","assets/images/Arti.png"),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/okey.png"),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: Text(
                      "4.5",
                      style: TextStyle(fontSize: 18, color: Color(0xFF303030)),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Text(
                      "(50 reviews)",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF808080),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Text(
                "Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ",
                textAlign: TextAlign.justify,
                style: TextStyle(color: Color(0xFF606060), fontSize: 14),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () => Get.to(() => Favorite()),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 30),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/favorite.png"),
                        ),
                        color: Color(0xFFE0E0E0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(width: 25),
                    buildButton("Add to Cart",250,60),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildItemNumberButton(String photoUrlStart, String number,String photoUrlEnd) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: EdgeInsets.only(left: 237),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(photoUrlStart),
          ),
          color: const Color(0xFFE0E0E0),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      Container(
        width: 53,
        height: 30,
        child: Center(
          child: Text(
            number,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
      Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(photoUrlEnd),
          ),
          color: Color(0xFFE0E0E0),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    ],
  );
}
