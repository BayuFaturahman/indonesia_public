
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageDetail extends StatefulWidget {

  final String? img;
  final String? nama;
  final String? namaLatin;
  final String? desc;

  const PageDetail({Key? key, this.img, this.nama, this.namaLatin, this.desc}) : super(key: key);

  @override
  _PageDetailState createState() => _PageDetailState();
}

class _PageDetailState extends State<PageDetail> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading:  InkWell(
          onTap: ()=>Get.back(),
            child:  const Icon(Icons.arrow_back_ios)),
        title: Text(widget.nama??''),

      ),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: Get.height/2.5,
                      width: Get.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.img??''),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 270),
                  child: Container(
                    height: Get.height,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(widget.namaLatin??"",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          const Divider(),
                          const  SizedBox(height: 10,),
                          Text(widget.namaLatin! + widget.desc!)
                        ],
                      ),
                    ),
                    decoration:const  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight:  Radius.circular(30),
                      )
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
