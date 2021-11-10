import 'package:flutter/material.dart';

class PageMessage extends StatefulWidget {
  const PageMessage({Key? key}) : super(key: key);

  @override
  _PageMessageState createState() => _PageMessageState();
}

class _PageMessageState extends State<PageMessage> {

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white12,
      child: const Text("Message"),
    );
  }
}
