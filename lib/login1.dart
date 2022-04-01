import 'package:flutter/material.dart';
import 'package:nyoba/login2.dart';
import 'package:nyoba/signin.dart';

class login1 extends StatefulWidget {
  const login1({ Key? key }) : super(key: key);

  @override
  State<login1> createState() => _login1State();
}

class _login1State extends State<login1> {
  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFECC80A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: lebar*0.7, height: tinggi*0.4, padding: EdgeInsets.all(10),
              child: Image(image: AssetImage("assets/images/logo.png")),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              width: lebar*0.4, height: tinggi*0.08,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return login2();
                }));
              },
              child: Text("LOGIN"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                primary: Color(0xFFD16706)
              ),),
            ),
            SizedBox(
              height:20,
            ),
            Container(
              width: lebar*0.4, height: tinggi*0.08,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return signin();
                }));
              },
              child: Text("SIGN UP"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                primary: Color(0xFFD16706)
              ),),
            )
          ],
        ),
      )
    );
  }
}