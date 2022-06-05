import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFECC80A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: lebar * 0.4,
              height: tinggi * 0.4,
              padding: EdgeInsets.all(5),
              child: Image(image: AssetImage("assets/images/logo.png")),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
              height: tinggi * 0.6,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 197, 197, 197),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: lebar * 0.6,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Full name",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: tinggi * 0.02,
                  ),
                  Container(
                    width: lebar * 0.6,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Email",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: tinggi * 0.02,
                  ),
                  Container(
                    width: lebar * 0.6,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Password",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: tinggi * 0.02,
                  ),
                  Container(
                    width: lebar * 0.6,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Re-Enter Password",
                      ),
                    ),
                  ),
                  Container(
                    width: lebar * 0.6,
                    child: OutlinedButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1920),
                            lastDate: DateTime(2025),
                          );
                        },
                        child: Text("Pilih Tanggal Lahir")),
                  ),
                  Container(
                    width: lebar * 0.4,
                    height: tinggi * 0.07,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Sign-Up"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          primary: Color(0xFFD16706)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
