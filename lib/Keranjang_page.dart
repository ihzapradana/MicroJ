import 'package:flutter/material.dart';

class keranjang extends StatefulWidget {
  const keranjang({Key? key}) : super(key: key);

  @override
  State<keranjang> createState() => _keranjangState();
}

class _keranjangState extends State<keranjang> {
  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFECC80A),
        centerTitle: true,
        title: Text("Keranjang", style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(15, 30, 15, 30),
              height: tinggi * 0.55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 197, 197, 197),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            )
          ],
        ),
      ),
    );
  }
}
