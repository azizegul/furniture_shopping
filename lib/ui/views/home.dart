import 'package:flutter/material.dart';
import 'package:furniture_shopping/ui/views/favorite.dart';
import 'package:furniture_shopping/ui/views/product.dart';
import 'package:furniture_shopping/ui/views/profile.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 64, left: 22, right: 22),
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.search,
                      color: Color(0xFF808080),
                      // size: 24.0,
                    ),
                  ],
                ),
                const SizedBox(width: 89),
                Column(children: const [
                  Text(
                    "Make home",
                    style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "BEAUTIFUL",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ]),
                const SizedBox(width: 89),
                Column(children: const [
                  Icon(
                    Icons.add_shopping_cart,
                    color: Color(0xFF808080),
                  ),
                ]),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildIcons("Popular", "assets/images/popular.png",
                      active: true),
                  buildIcons("Chair", "assets/images/chair.png", active: false),
                  buildIcons("Table", "assets/images/table.png", active: false),
                  buildIcons("Armchair", "assets/images/armchair.png",
                      active: false),
                  buildIcons("Bed", "assets/images/bed.png", active: false),
                  buildIcons("Bed", "assets/images/bed.png", active: false),
                  buildIcons("Bed", "assets/images/bed.png", active: false),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Flexible(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  buildPhotos(
                      "Black Simple Lamp", "assets/images/photo.png", "12"),
                  buildPhotos(
                      "Minimal Stand", "assets/images/photo2.png", "25"),
                  buildPhotos("Coffee Chair", "assets/images/photo3.png", "20"),
                  buildPhotos("Simple Desk", "assets/images/photo4.png", "50"),
                  buildPhotos("Simple Desk", "assets/images/photo4.png", "50"),
                  buildPhotos("Simple Desk", "assets/images/photo4.png", "50"),
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
      ),
    );
  }
}

//Body Photos
Widget buildPhotos(String title, String photoUrl, String price) {
  return GestureDetector(
    onTap: () => Get.to(() => Product()),
    child: Column(
      children: [
        Container(
          width: 157,
          height: 130,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(photoUrl), fit: BoxFit.fill),
              color: Colors.black,
              borderRadius: BorderRadius.circular(10)),
          child: Container(
            width: 30,
            height: 30,
            margin: const EdgeInsets.only(top: 90, left: 120),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: const Color(0xFF60606066),
              image: const DecorationImage(
                  image: AssetImage("assets/images/add.png"),
                  fit: BoxFit.scaleDown),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xFF606060),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 5),
            Text(
              price,
              style: const TextStyle(
                  color: Color(0xFF303030),
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget buildIcons(String title, String icon, {required bool active}) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(left: 20),
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(active ? 0xFF303030 : 0xFFF5F5F5),
          image:
              DecorationImage(image: AssetImage(icon), fit: BoxFit.scaleDown),
        ),
      ),
      Text(title),
    ],
  );
}

Widget navigationBar(String iconUrl) {
  return Container(
    margin: EdgeInsets.all(25),
    padding: EdgeInsets.only(left: 20, right: 20),
    width: 40,
    height: 30,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(iconUrl),
        fit: BoxFit.scaleDown,
      ),
    ),
  );
}