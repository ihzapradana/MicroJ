import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  var list_item = [];

  void initState() {
    super.initState();
    gerdatakatalog();
  }

  gerdatakatalog() {
    var colPesanan = FirebaseFirestore.instance.collection('katalog');
    colPesanan.get().then((value) {
      setState(() {
        list_item = value.docs.map((e) {
          return {
            'nama': e['nama'],
            'jarak': e['jarak'],
            'deskripsi': e['deskripsi'],
            'gambar': e['gambar']
          };
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Category Olahan Makanan",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xFFECC80A),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: list_item.length,
                itemBuilder: (_, int index) {
                  var item = list_item[index];
                  return Container(
                    child: Row(
                      children: [
                        Container(
                            width: lebar * 0.4,
                            height: tinggi * 0.2,
                            padding: EdgeInsets.all(3),
                            child: ClipRRect(
                              child: Image(
                                image: AssetImage(
                                    "assets/images/${item['gambar']}"),
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.only(left: lebar * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['nama'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: tinggi * 0.02,
                              ),
                              Text(item['jarak']),
                              SizedBox(
                                height: tinggi * 0.02,
                              ),
                              Text(item['deskripsi'])
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
