import 'package:flutter/material.dart';

class PageDiscovery extends StatefulWidget {
  const PageDiscovery({Key? key}) : super(key: key);

  @override
  _PageDiscoveryState createState() => _PageDiscoveryState();
}

class _PageDiscoveryState extends State<PageDiscovery> {

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white12,
      child: const Text("Discovery"),
    );
  }
}
