import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:node_js_sample_project/src/view/login_page/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Node Js Sample Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}