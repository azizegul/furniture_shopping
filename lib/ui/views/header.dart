import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildHeader(String iconStart, String title,String iconEnd) {
  return Container(
    width: 375,
    height: 44,
    margin:const EdgeInsets.only(top: 44),
    child: Row(
      children: [
        Container(
          width: 17,
          height: 17,
          padding:const EdgeInsets.only(top: 17.67, left: 17.67),
          decoration:BoxDecoration(
            image: DecorationImage(
              image: AssetImage(iconStart),
            ),
          ),
        ),
        const SizedBox(width: 47),
        Container(
          width: 255,
          height: 20,
          padding:const EdgeInsets.only(left: 60, right: 60),
          child:Text(
            title,
            style: TextStyle(
              color: Color(0xFF303030),
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(width: 26.17),
        Container(
          width: 17,
          height: 17,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(iconEnd),
            ),
          ),
        ),
      ],
    ),
  );
}