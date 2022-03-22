import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';

class Boarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/background.png",
              width: Get.width,
              height: Get.height,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "MAKE YOUR",
                    style: TextStyle(
                      color: Color(0xFF606060),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "HOME BEAUTIFUL",
                    style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 35),
                  Text(
                    "The best simple place where you discover most wonderful furnitures and make your home beautiful",
                    style: TextStyle(
                        color: Color(0xFF808080),
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, bottom: 60, left: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: ElevatedButton(
                        onPressed: () =>Get.to(Login()) ,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xFF242424),
                          ),
                          fixedSize:
                              MaterialStateProperty.all<Size>(Size(160, 55)),
                        ),
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
