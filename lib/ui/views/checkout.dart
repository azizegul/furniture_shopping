import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart.dart';
import 'favorite.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildHeaderCart("assets/images/back.png", "Check Out"),
          buildLineIcon("Shipping Address"),
          buildFromBox(),
          SizedBox(height: 30),
          buildLineIcon("Payment"),
          buildCard(),
          buildLineIcon("Delivery method"),
          Padding(
            padding: const EdgeInsets.all(20),
            child: buildButton("SUBMIT ORDER", 350, 60),
          ),
        ],
      ),
    );
  }
}

Widget buildLineIcon(String title) {
  return Container(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF909090),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/editicon.png"),
            ),
            // color: Color(0xFFE0E0E0),
          ),
        ),
      ],
    ),
  );
}

Widget buildFromBox() {
  return Container(
    width: 335,
    height: 127,
    decoration: BoxDecoration(
      color: Color(0xFFFFFFFF),
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Color(0xFF8A959E33).withOpacity(0.20),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 5),
          width: 142,
          height: 25,
          // color: Colors.black,
          child: Text(
            "Bruno Fernandes",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        Divider(
          thickness: 2,
          color: Color(0xFFF0F0F0),
        ),
        Container(
          width: 296,
          height: 50,
          child: Text(
            "25 rue Robert Latouche, Nice, 06200, Côte D’azur, France",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Color(0xFF808080),
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    ),
  );
}

Widget buildCard() {
  return Container(
      height: 68,
      width: 335,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/card.png"), fit: BoxFit.scaleDown),
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF8A959E33).withOpacity(0.20),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Container(
        width: 118,
        height: 21,
        child: Text(
          "**** **** **** 3947",
          textAlign:TextAlign.center,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ));
}
