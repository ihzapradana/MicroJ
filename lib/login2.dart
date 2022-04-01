import 'package:flutter/material.dart';

class login2 extends StatelessWidget {
  const login2({ Key? key }) : super(key: key);

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
              width: lebar*0.4, height: tinggi*0.4, padding: EdgeInsets.all(5),
              child: Image(image: AssetImage("assets/images/logo.png")),
              
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
              height: tinggi*0.55,
              decoration: BoxDecoration(color: Color.fromARGB(255, 197, 197, 197),borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  SizedBox(height: tinggi*0.02,),
                  Container(
                    width: lebar*0.7,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
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
                  SizedBox(height: tinggi*0.02,),
                  Container(
                    width: lebar*0.7,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
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
                  SizedBox(height: tinggi*0.02,),
                  
                  SizedBox(height: tinggi*0.02,),
                  Container(
                    width: lebar*0.4, height: tinggi*0.08,
                    child: ElevatedButton(onPressed: () {
                    },
                    child: Text("Sign-Up"),
                    style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      ),
                    primary: Color(0xFFD16706)
                    ),),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}