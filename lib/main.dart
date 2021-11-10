/// Flutter code sample for ScaffoldState.showBottomSheet

// This example demonstrates how to use `showBottomSheet` to display a
// bottom sheet when a user taps a button. It also demonstrates how to
// close a bottom sheet using the Navigator.

import 'package:flutter/material.dart';
import 'package:gbk_runing/pages/home/controller_home.dart';
import 'package:gbk_runing/pages/home/home.dart';
import 'package:get/get.dart';

void main() => runApp(
    const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Get.put(ControllerHome());
    return const  GetMaterialApp(
        home: PageHome()
    );
  }
}

/// This is the stateless widget that the main application instantiates.
