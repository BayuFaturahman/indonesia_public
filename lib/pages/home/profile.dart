import 'package:flutter/material.dart';

class PageProfile extends StatefulWidget {
  const PageProfile({Key? key}) : super(key: key);

  @override
  _PageProfileState createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white12,
      child: const Text("Profile"),
    );
  }
}
