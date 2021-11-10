import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gbk_runing/pages/home/page_detail.dart';
import 'package:get/get.dart';

class PageHomeBody extends StatefulWidget {
  const PageHomeBody({Key? key}) : super(key: key);

  @override
  _PageHomeBodyState createState() => _PageHomeBodyState();
}

class _PageHomeBodyState extends State<PageHomeBody> {
  final TextEditingController _searchController = TextEditingController();

  final List<dynamic> _dataBurung = [
    {
      "id": 0,
      "nama": "Murai Batu",
      "imageUrl": "assets/images/murai.jpeg",
      "namaLain": "Kucica Hutan (Copsychus malabaricus)",
      "desc":
          " juga dikenal sebagai Murai Batu termasuk ke dalam famili Muscicapidae atau burung cacing. Tersebar di seluruh pulau Sumatra, Semenanjung Malaysia, dan sebagian pulau Jawa. Beberapa pakar menganggap ras dari Kalimantan Utara Murai alis putih (Copsychus malabaricus stricklandii) sebagai spesies tersendiri.Di habitat aslinya Kucica Hutan cenderung memilih hutan alam yang rapat atau hutan sekunder. Kucica Hutan merupakan kelompok burung yang dikenal sebagai teritorial dan sangat kuat dalam mempertahankan wilayahnya (Thruses). Burung Kucica Hutan memiliki suara kicauan yang bagus sehingga mendapat penghargaan terbaik atas nyanyiannya yang sangat indah pada tahun 1947 (The Best Song Birds – Delacour, 1947). Burung Kucica Hutan merupakan kelompok burung yang digemari di kalangan para pencinta kicauan karena memiliki suara atau spesifikasi kicauan yang sangat baik.Untuk daerah Sumatra khususnya, banyak sekali ditemukan burung jenis Kucica Hutan, seperti burung Kucica Hutan aceh, burung Kucica Hutan medan, burung murai nias dan Kucica Hutan lampung.Penyebaran burung Kucica Hutan di Pulau Jawa saat ini sangat terbatas dan hanya ditemukan di beberapa tempat yang berhutan, seperti di tempat-tempat konservasi atau tempat wisata alam contohnya seperti Taman Nasional Ujung Kulon dan Taman Nasional Meru Betiri dan Hutan Wisata Pananjung Pangandaran."
    },
    {
      "id": 1,
      "nama": "Anis Merah ",
      "imageUrl": "assets/images/anis.jpeg",
      "namaLain": "Geokichla citrina",
      "desc":"Burung anis merah berukuran sedang (20–23 cm) dengan berat tubuh antara (47–67 g),[2] berkepala jingga. Burung dewasa: kepala, tengkuk, dan tubuh bawah jinggaterang,tungging putih, tubuh atas abu-abu kebiruan dengan bercak putih di sayap atas. Burung muda bercoret dan bersisik di punggung. Iris coklat, paruh hitam, kakicoklat. Anis merah jantan dan betina sulit dibedakan"
    },
    {
      "id": 2,
      "nama": "Cililin",
      "imageUrl": "assets/images/cililin.jpeg",
      "namaLain": "platylophus galericulatus",
      "desc":"Burung dengan nama latin platylophus galericulatus memiliki jambul panjang (3 – 4 cm) di bagian kepala dengan ukuran tubuh sekitar 28 – 30 cm. Perbedaan pejantan dengan betina dapat dilihat dari bintik putih pada alis mata serta garis pemisah bulu putih dan hitam di bagian leher."


    },
    {
      "id": 3,
      "nama": "Poksay",
      "imageUrl": "assets/images/poksay.jpeg",
      "namaLain": "Garrulax leucolophusGarrulax leucolophus",
      "desc":"Poksay jambul-putih (Garrulax leucolophus) atau poksay mantel atau dikenal dengan nama poksay hongkong[2] dan poksay hitam adalah termasuk familia Timaalidae. Ia ditemukan di hutan atau semak belukar di kaki gunung Himalaya sampai ke Indochina. Awalnya ia digolongkan ke dalam Poksay sumatera sebagai subspesies, tetapi bulu burung itu tidak sama yang mana bulu poksay hitam berwarna coklat dan putih agak kemerah-karatan, dan topeng hitam mukanya yang lebih lebar."

    },
    {
      "id": 4,
      "nama": "Cungkok ",
      "imageUrl": "assets/images/cungkok.png",
      "namaLain": " Chloropsis sonnerati",
      "desc":"Cica-daun besar (nama ilmiah: Chloropsis sonnerati), juga dikenal dengan sebutan burung daun dan murai daun, adalah jenis burung pengicau dalam famili Chloropseidae yang seluruh badannya didominasi oleh warna hijau. Burung ini berkerabat dekat dengan burung cipoh (Aegithina spp.). Beberapa orang menyebut burung ini sebagai cucak hijau, meskipun cica-daun besar tidak tergolong burung cucak-cucakan (famili Pycnonotidae), seperti burung cucak rawa. Dalam bahasa Inggris, cica-daun besar dikenal sebagai greater green leafbird."

    }
  ];

  String query = '';
  List results = [];

  void setResults(String query) {
    results = _dataBurung
        .where((elem) =>
            elem['nama']
                .toString()
                .toLowerCase()
                .contains(query.toLowerCase()) ||
            elem['imageUrl']
                .toString()
                .toLowerCase()
                .contains(query.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white12,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                  color: const Color(0xFFe9eaec),
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                cursorColor: const Color(0xFF000000),
                controller: _searchController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF3AB648),
                    ),
                    hintStyle: TextStyle(fontSize: 15),
                    hintText: "Cari Burung..",
                    border: InputBorder.none),
                onChanged: (v) {
                  setState(() {
                    query = v;
                    setResults(query);
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: results.isNotEmpty
                ? GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3 / 2.7,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: results.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return InkWell(
                        onTap: () => Get.to(PageDetail(
                          nama: _dataBurung[index]['nama'],
                          img: _dataBurung[index]['imageUrl'],
                          namaLatin: _dataBurung[index]['namaLain'],
                          desc: _dataBurung[index]['desc'],
                        )),
                        child: Column(
                          children: [
                            Container(
                              height: 140,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(results[index]['imageUrl']),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                results[index]['nama'],
                                style:
                                    const TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      );
                    })
                : results.isEmpty && _searchController.text.isNotEmpty
                    ? const Center(
                        child: Text("Data Burung Tidak Ditemukan"),
                      )
                    : GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 3 / 2.7,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                        itemCount: _dataBurung.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return InkWell(
                            onTap: () => Get.to(PageDetail(
                              nama: _dataBurung[index]['nama'],
                              img: _dataBurung[index]['imageUrl'],
                              namaLatin: _dataBurung[index]['namaLain'],
                              desc: _dataBurung[index]['desc'],
                            )),
                            child: Column(
                              children: [
                                Container(
                                  height: 140,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            _dataBurung[index]['imageUrl']),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    _dataBurung[index]['nama'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
          ),
        ],
      ),
    );
  }
}
