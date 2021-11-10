import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:gbk_runing/pages/home/add.dart';
import 'package:gbk_runing/pages/home/controller_home.dart';
import 'package:gbk_runing/pages/home/discovery.dart';
import 'package:gbk_runing/pages/home/home_body.dart';
import 'package:gbk_runing/pages/home/messege.dart';
import 'package:gbk_runing/pages/home/profile.dart';
import 'package:get/get.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  final ControllerHome cHome = Get.find<ControllerHome>();

  int _selectedNavbar = 2;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
      cHome.selectedNavbar(_selectedNavbar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(cHome.selectedNavbar.value == 0
              ? 'Add'
              : cHome.selectedNavbar.value == 1
                  ? 'Discovery'
                  : cHome.selectedNavbar.value == 2
                      ? 'Home'
                      : cHome.selectedNavbar.value == 3
                          ? 'Message'
                          : 'Profile')),
      body: Obx(() => cHome.selectedNavbar.value == 0
          ? const PageAdd()
          : cHome.selectedNavbar.value == 1
              ? const PageDiscovery()
              : cHome.selectedNavbar.value == 2
                  ? const PageHomeBody()
                  : cHome.selectedNavbar.value == 3
                      ? const PageMessage()
                      : const PageProfile()),
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: _selectedNavbar,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
