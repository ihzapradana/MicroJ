import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nyoba/home.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    final lebar = MediaQuery.of(context).size.width;
    final tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Profile",
              style: TextStyle(
                color: Colors.black,
              )),
        ),
        backgroundColor: Color(0xffECC80A),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: lebar * 0.9,
                margin: EdgeInsets.only(top: 15),
                child: Row(children: [
                  Container(
                      width: lebar * 0.23,
                      height: tinggi * 0.23,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/olahan.jpeg"),
                        radius: 50,
                      )),
                  Container(
                    width: lebar * 0.47,
                    margin: EdgeInsets.only(left: lebar * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Himawan Ihza",
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 16)),
                        SizedBox(
                          height: tinggi * 0.03,
                        ),
                        Text("himawan@gmail.com",
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 16)),
                        SizedBox(
                          height: tinggi * 0.03,
                        ),
                        Text("087881904493",
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 16)),
                      ],
                    ),
                  ),
                  Container(
                    width: lebar * 0.1,
                    margin: EdgeInsets.only(left: lebar * 0.05),
                    child: Icon(
                      Icons.edit_outlined,
                      size: 35,
                      color: Color(0xffD16706),
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              width: lebar * 0.9,
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Akun",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffD16706)),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              width: lebar * 0.9,
              margin: EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Container(
                    width: lebar * 0.1,
                    child: Icon(
                      Icons.description_outlined,
                      size: 35,
                      color: Color(0xffb1b1b1),
                    ),
                  ),
                  Container(
                      width: lebar * 0.75,
                      margin: EdgeInsets.only(left: lebar * 0.05),
                      child: InkWell(
                        onTap: () {
                          // Ini buat page route pesanan
                        },
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: lebar * 0.65,
                                    child: Text(
                                      "Pesanan",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: lebar * 0.1,
                                    child: Text(
                                      ">",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 25,
                                          color: Colors.grey),
                                      textAlign: TextAlign.end,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: tinggi * 0.01,
                            ),
                            SizedBox(
                              height: tinggi * 0.002,
                              child: Container(
                                color: Color(0xffb1b1b1),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Container(
              width: lebar * 0.9,
              margin: EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Container(
                    width: lebar * 0.1,
                    child: Icon(
                      Icons.location_city_outlined,
                      size: 35,
                      color: Color(0xffb1b1b1),
                    ),
                  ),
                  Container(
                      width: lebar * 0.75,
                      margin: EdgeInsets.only(left: lebar * 0.05),
                      child: InkWell(
                        onTap: () {
                          // Ini buat page route alamat
                        },
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: lebar * 0.65,
                                    child: Text(
                                      "Alamat",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: lebar * 0.1,
                                    child: Text(
                                      ">",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 25,
                                          color: Colors.grey),
                                      textAlign: TextAlign.end,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: tinggi * 0.01,
                            ),
                            SizedBox(
                              height: tinggi * 0.002,
                              child: Container(
                                color: Color(0xffb1b1b1),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Container(
              width: lebar * 0.9,
              margin: EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Container(
                    width: lebar * 0.1,
                    child: Icon(
                      Icons.payment_outlined,
                      size: 35,
                      color: Color(0xffb1b1b1),
                    ),
                  ),
                  Container(
                      width: lebar * 0.75,
                      margin: EdgeInsets.only(left: lebar * 0.05),
                      child: InkWell(
                        onTap: () {
                          // Ini buat page route cara pembayaran
                        },
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: lebar * 0.65,
                                    child: Text(
                                      "Cara Pembayaran",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: lebar * 0.1,
                                    child: Text(
                                      ">",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 25,
                                          color: Colors.grey),
                                      textAlign: TextAlign.end,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: tinggi * 0.01,
                            ),
                            SizedBox(
                              height: tinggi * 0.002,
                              child: Container(
                                color: Color(0xffb1b1b1),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Container(
              width: lebar * 0.9,
              margin: EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Container(
                    width: lebar * 0.1,
                    child: Icon(
                      Icons.logout_outlined,
                      size: 35,
                      color: Color(0xffb1b1b1),
                    ),
                  ),
                  Container(
                      width: lebar * 0.75,
                      margin: EdgeInsets.only(left: lebar * 0.05),
                      child: InkWell(
                        onTap: () {
                          // Ini buat page route logout
                        },
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: lebar * 0.65,
                                    child: Text(
                                      "Keluar",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: lebar * 0.1,
                                    child: Text(
                                      ">",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 25,
                                          color: Colors.grey),
                                      textAlign: TextAlign.end,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: tinggi * 0.01,
                            ),
                            SizedBox(
                              height: tinggi * 0.002,
                              child: Container(
                                color: Color(0xffb1b1b1),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
