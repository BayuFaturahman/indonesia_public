import 'package:flutter/material.dart';

class PageAdd extends StatefulWidget {
  const PageAdd({Key? key}) : super(key: key);

  @override
  _PageAddState createState() => _PageAddState();
}

class _PageAddState extends State<PageAdd> {

  @override
  Widget build(BuildContext context){
    return Container(
        color: Colors.white12,
        child: const Text("Add"),
      );
  }
}
