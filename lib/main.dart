import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(               //to use getx yu have to make get
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DEMO(),
    );
  }
}





// about get why we are using getx
//     1--> it is a state managemt tool
//     2--> ye stless widget / particular widget  ki state change karne me kaam aata h
//     3--> jab apn stateful widget call karte h tab whole buil function call
//           hota h and each widget phir se build hote h
//           that cause memeory loss and app becomes bulky
//     4--> get x iss ko sahi karta h by only building the widget jisme changes huye h rather
//         then building whole screen
//     5--> this make our app fast




// IT ALSO HELP TO SEPERATE UI PART AND PROCESSING PART USING CONTROLLERS



