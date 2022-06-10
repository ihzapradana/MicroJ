import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nyoba/BottomNavBar.dart';
import 'package:nyoba/home.dart';

class login2 extends StatefulWidget {
  login2({Key? key}) : super(key: key);

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool showValue = true;

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
              padding: EdgeInsets.only(right: 0.7, left: 0.7),
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
              height: tinggi * 0.55,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 197, 197, 197),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: tinggi * 0.02,
                  ),
                  Container(
                    width: lebar * 0.7,
                    child: TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
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
                    width: lebar * 0.7,
                    child: TextField(
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword,
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
                    padding: EdgeInsets.only(right: 0, left: 35),
                    child: Row(
                      children: [
                        Checkbox(
                          value: showValue,
                          activeColor: Color(0xFF248D1A),
                          onChanged: (bool? value) {
                            showValue = value!;
                            setState(() {
                              showValue = value;
                            });
                            print(showValue);
                          },
                        ),
                        Text("Remember Me",
                            style: TextStyle(
                              color: Color(0xFF248D1A),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: tinggi * 0.02,
                  ),
                  Container(
                    width: lebar * 0.4,
                    height: tinggi * 0.08,
                    child: ElevatedButton(
                      onPressed: () {
                        dologin();},
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return home();
                      // }));
                      // },
                      child: Text("Log-In"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        primary: Color(0xFFD16706),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  //  Future login() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: _emailController.text.trim(),
  //     password: _passwordController.text.trim(),
  //   );
  // }

  void submit(BuildContext context, String email, String password) {
    if (email.isEmpty || password.isEmpty) {
      final snackBar = SnackBar(
        duration: const Duration(seconds: 5),
        content: Text("Email dan Password harus diisi"),
        backgroundColor: Colors.red,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }

    AlertDialog alert = AlertDialog(
      title: Text("Login Berhasil"),
      content: Container(
        child: Text("Selamat Anda Berhasil Login"),
      ),
      actions: [
        TextButton(
            child: Text("Ok"),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return BottomNav();
              }));
            })
      ],
    );

    showDialog(context: context, builder: (context) => alert);
  }
  Future dologin() async {
    try {
      var email = _emailController.text;
      var password = _passwordController.text;
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email:email,
        password: password,
      );
       final snackBar = SnackBar(
        duration: const Duration(seconds: 5),
        content: Text("Berhasil Login"),
        backgroundColor: Colors.green,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return BottomNav();
      }));
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    final snackBar = SnackBar(
        duration: const Duration(seconds: 5),
        content: Text("Email / Password Salah!"),
        backgroundColor: Colors.red,);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);       
}
}

// class login2 extends StatelessWidget {
//   const login2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     bool showValue = true;
//     final tinggi = MediaQuery.of(context).size.height;
//     final lebar = MediaQuery.of(context).size.width;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: Color(0xFFECC80A),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 width: lebar * 0.4,
//                 height: tinggi * 0.4,
//                 padding: EdgeInsets.all(5),
//                 child: Image(image: AssetImage("assets/images/logo.png")),
//               ),
//               Container(
//                 width: double.infinity,
//                 margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
//                 height: tinggi * 0.55,
//                 decoration: BoxDecoration(
//                     color: Color.fromARGB(255, 197, 197, 197),
//                     borderRadius: BorderRadius.all(Radius.circular(8))),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: tinggi * 0.02,
//                     ),
//                     Container(
//                       width: lebar * 0.7,
//                       child: TextField(
//                         decoration: InputDecoration(
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8),
//                             borderSide: BorderSide(color: Colors.white),
//                           ),
//                           fillColor: Colors.white,
//                           filled: true,
//                           hintText: "Email",
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: tinggi * 0.02,
//                     ),
//                     Container(
//                       width: lebar * 0.7,
//                       child: TextField(
//                         decoration: InputDecoration(
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8),
//                             borderSide: BorderSide(color: Colors.white),
//                           ),
//                           fillColor: Colors.white,
//                           filled: true,
//                           hintText: "Password",
//                         ),
//                       ),
//                     ),

                    
//                     SizedBox(
//                       height: tinggi * 0.02,
//                     ),
//                     // Checkbox(value: false, onChanged: (bool? value){}),
//                     Row(
//                       children: [
//                         Checkbox(
//                           value: showValue,
//                           activeColor: Colors.black,
//                             onChanged: (bool? value) {
//                               showValue = value!;
//                               setState(() {
//                                 showValue = value;});
//                                 print(showValue);
//                             },
//                         ),
//                         Text(
//                           "$showValue",
//                         ),
//                       ],
//                     ),  
//                     SizedBox(
//                       height: tinggi * 0.02,
//                     ),

                    
//                     Container(
//                       width: lebar * 0.4,
//                       height: tinggi * 0.08,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: Text("Log-In"),
//                         style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             primary: Color(0xFFD16706)),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ));
//   }

//   void setState(Null Function() param0) {}
// };