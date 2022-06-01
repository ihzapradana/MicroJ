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
        body: Container(
          color: Color(0xffeeeeee),
          child: Center(
            child: Container(
              width: lebar * 0.9,
              height: tinggi * 0.73,
              color: Colors.white,
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      width: lebar * 0.9,
                      height: tinggi * 0.5,
                      child: Column(children: [
                        Container(
                          width: lebar * 0.8,
                          child: Row(
                            children: [
                              Container(
                                width: lebar * 0.2,
                                height: tinggi * 0.15,
                                child: Image(
                                  image:
                                      AssetImage("assets/images/olahan.jpeg"),
                                ),
                              ),
                              Container(
                                  width: lebar * 0.3,
                                  margin: EdgeInsets.only(left: lebar * 0.05),
                                  child: Text(
                                    "Pecel Biasa",
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 20),
                                  )),
                              Container(
                                width: lebar * 0.2,
                                margin: EdgeInsets.only(left: lebar * 0.05),
                                child: Column(
                                  children: [
                                    Text(
                                      "5.400",
                                      style: TextStyle(
                                          fontFamily: "Poppins", fontSize: 20),
                                    ),
                                    Text(
                                      "x1",
                                      style: TextStyle(
                                          fontFamily: "Poppins", fontSize: 20),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: tinggi * 0.003,
                          child: Container(
                            color: Color(0xffeeeeee),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Container(
                    width: lebar * 0.9,
                    height: tinggi * 0.23,
                    child: Column(
                      children: [
                        SizedBox(
                          height: tinggi * 0.003,
                          child: Container(
                            color: Color(0xffeeeeee),
                          ),
                        ),
                        Container(
                          width: lebar * 0.8,
                          margin: EdgeInsets.only(top: 15, bottom: 15),
                          child: Row(
                            children: [
                              Container(
                                width: lebar * 0.6,
                                child: Text("Total Harga",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 18,
                                    )),
                              ),
                              Container(
                                width: lebar * 0.15,
                                margin: EdgeInsets.only(left: lebar * 0.05),
                                child: Text(
                                  "5.400",
                                  style: TextStyle(
                                      fontFamily: "Poppins", fontSize: 18),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: tinggi * 0.003,
                          child: Container(
                            color: Color(0xffeeeeee),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 35),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Checkout"),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    primary: Color(0xFFD16706))))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
