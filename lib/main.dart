import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nyoba/login1.dart';
import 'package:nyoba/profile.dart';
import 'package:nyoba/ulasan.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MicroJ",
      theme: ThemeData(primaryColor: Color(0xFFECC80A)),
      home: login1(),
    );
  }
}
