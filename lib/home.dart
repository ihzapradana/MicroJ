import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  get backgroundcolor => null;

  @override
  Widget build(BuildContext context) {
    final lebar = MediaQuery.of(context).size.width;
    final tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFECC80A),
        centerTitle: true,
        title: Text("HOME", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: lebar * 0.8,
            height: tinggi * 0.2,
            child: Image(image: AssetImage("assets/images/bhome.jpeg")),
          ),
          Container(
            child: Text("Shop By Categories"),
          ),
          Row(
            children: [
              Card(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    Image(image: AssetImage("assets/images/kerjainan.jpeg")),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
