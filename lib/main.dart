import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_shopping/ui/views/boarding.dart';
import 'package:furniture_shopping/ui/views/login.dart';
import 'package:get/route_manager.dart';
import 'package:http/http.dart';

void main() {
  //Üst menü ayarları
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // Get.testMode:true,
      routes: {
        '/login': (context) => Login(),
      },
      
      home: Bar(),
    );
  }
}

class Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Boarding()),
    );
  }
}
