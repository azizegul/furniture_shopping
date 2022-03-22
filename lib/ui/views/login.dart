import 'package:flutter/material.dart';
import 'package:furniture_shopping/ui/shared/button.dart';
import 'package:furniture_shopping/ui/views/signup.dart';
import 'package:get/get.dart';

import 'favorite.dart';
import 'home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Expanded(
                  child: Divider(
                      thickness: 2, indent: 30, color: Color(0xFFBDBDBD)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Image.asset(
                    "assets/images/Group.png",
                  ),
                ),
                const Expanded(
                    child: Divider(
                  thickness: 2,
                  color: Color(0xFFBDBDBD),
                  endIndent: 30,
                )),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello !",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 24,
                          color: Color(0xFF909090))),
                  SizedBox(height: 10),
                  Text(
                    "WELCOME BACK",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 30, top: 25),
              child: Stack(
                children: [
                  SafeArea(
                    child: Container(
                      width: Get.width,
                      height: 437,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(138, 149, 158, 0.2),
                              blurRadius: 100,
                              blurStyle: BlurStyle.outer,
                              offset: Offset(1, 1))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 50),
                    child: Column(
                      children: [
                        TextField(
                          obscureText: true,
                          showCursor: true,
                          decoration: InputDecoration(
                            labelText: 'Email',
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                          ),
                        ),
                        SizedBox(height: 30),
                        TextButton(
                            onPressed: () => null,
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFFFFFFF),
                              ),
                            ),
                            child: const Text(
                              "Forgot Password",
                              style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            )),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () => Get.to(() => Home()),
                          child: buildButton("Log in", 285, 50),
                          ),
                        SizedBox(height: 20),
                        TextButton(
                            onPressed: () => Get.to(Signup()),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFFFFFFF),
                              ),
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(160, 55)),
                            ),
                            child: const Text(
                              "SIGN UP",
                              style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    ),
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
