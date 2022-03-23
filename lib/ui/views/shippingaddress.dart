import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping/ui/views/profile.dart';
import 'package:get/get.dart';

import 'cart.dart';
import 'favorite.dart';
import 'home.dart';
import 'orders.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildHeaderCart("assets/images/back.png", "Shipping Address"),
          const SizedBox(height: 20),
          Expanded(
              child: ListView(
            children: [
              buildCheckRow(),
              SizedBox(height: 15),
              buildFrom(),
              SizedBox(height: 15),
              buildCheckEmptyRow("assets/images/checkbox.png","Use as the shipping address"),
              SizedBox(height: 15),
              buildFrom(),
              SizedBox(height: 15),
              buildCheckEmptyRow("assets/images/checkbox.png","Use as the shipping address"),
              SizedBox(height: 15),
              buildFrom(),
              buildAddedButtonCircul(),
            ],
          )),
        ],
      ),
    );
  }
}

Widget buildCheckRow() {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: Color(0xFF303030),
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                image: AssetImage("assets/images/tik.png"),
              )),
        ),
        SizedBox(width: 20),
        Text(
          "Use as the shipping address",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ),
  );
}

Widget buildDividerShippingAddress() {
  return Row(
    children: [
      Expanded(
          child: Divider(
        thickness: 1,
        color: Color(0xFFF0F0F0),
      )),
    ],
  );
}

Widget buildFrom() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: SizedBox(
      width: 350,
      height: 90,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Bruno Fernandes",
                  style: const TextStyle(
                      color: Color(0xFF242424),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Spacer(),
              Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/editicon.png"))),
              ),
            ],
          ),
          buildDividerShippingAddress(),
          Row(
            children: [
              Container(
                width: 296,
                height: 50,
                child: const Text(
                  "25 rue Robert Latouche, Nice, 06200, Côte D’azur, France",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF808080)),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget buildCheckEmptyRow(String url,String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                image: AssetImage(url),
              )),
        ),
        SizedBox(width: 20),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}

Widget buildAddedButtonCircul() {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0, bottom: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/images/Arti.png"),
                fit: BoxFit.scaleDown,
              )),
        ),
      ],
    ),
  );
}
