import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping/ui/views/shippingaddress.dart';

import 'cart.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildHeaderCart("assets/images/back.png", "Payment Method"),
          Expanded(
              child: ListView(
            children: [
              buildCardRow("assets/images/PaymentCard.png"),
              SizedBox(height: 10),
              buildCheckRowPayment("assets/images/tik.png"),
              SizedBox(height: 10),
              buildCardRow("assets/images/PaymentCard.png"),
              SizedBox(height: 10),
              buildCheckEmptyRowPayment(
                  "assets/images/checkbox.png", "Use as default payment method"),
                  SizedBox(height: 10),
                  buildAddedButtonCircul(),
            ],
          )),
        ],
      ),
    );
  }
}

Widget buildCardRow(String url) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 400,
        height: 250,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(url), fit: BoxFit.fill),
        ),
      ),
    ],
  );
}

Widget buildCheckRowPayment(String url) {
  return Padding(
    padding: const EdgeInsets.only(left: 30),
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
                image: AssetImage(url),
              )),
        ),
        SizedBox(width: 20),
        Text(
          "Use as default payment method",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ),
  );
}

Widget buildCheckEmptyRowPayment(String url,String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 30),
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
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
