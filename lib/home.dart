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
            // width: lebar * 0.8,
            // height: tinggi * 0.2,
            child: Image(image: AssetImage("assets/images/bhome.jpeg")),
          ),
          Container(
            color: Color.fromARGB(255, 218, 218, 218),
            alignment: Alignment.topLeft,
            child: Text("Shop By Categories"),
          ),
          // Container(
          //   color: Colors.grey,
          //   alignment: Alignment.topLeft,
          //   child: Image(image: AssetImage("assets/images/kerjinan.jpeg")),
          // ),
          // Container(
          //   alignment: Alignment.topRight,
          //   child: Image(image: AssetImage("assets/images/olahan.jpeg")),
          // ),
          // Row(
          //   children: [
          //     Card(
          //       child: GridView.count(
          //         crossAxisCount: 2,
          //         children: [
          //           Image(image: AssetImage("assets/images/kerjinan.jpeg")),
          //         ],
          //       ),
          //     )
          //   ],
          // )
        ],
      ),
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag,
                )),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person))
          ],
        ),
      ),
    );
  }
}
