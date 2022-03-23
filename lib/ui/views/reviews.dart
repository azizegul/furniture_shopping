import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'header.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildHeader(
              "assets/images/back.png", "My reviews", "assets/images/search.png"),
          SizedBox(height: 18),
          Container(
            width: 335,
            height: 242,
            decoration: BoxDecoration(color: Colors.black),
          ),
        ]
      ),
    );
  }
}