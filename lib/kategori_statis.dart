import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Kategori extends StatefulWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  @override
  Widget build(BuildContext context) {
    final lebar = MediaQuery.of(context).size.width;
    final tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFECC80A),
        centerTitle: true,
        title:
            Text("kategori kerajinan", style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Card(
          child: Row(
            children: [
              Image(image: AssetImage("assets/images/olahan.jpeg")),
              Text("test")
            ],
          ),
        ),
      ])),
    );
  }
}
