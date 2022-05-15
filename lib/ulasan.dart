import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Ulasan extends StatefulWidget {
  const Ulasan({Key? key}) : super(key: key);

  @override
  State<Ulasan> createState() => _UlasanState();
}

class _UlasanState extends State<Ulasan> {
  File? image;

  aksesCamera() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? img = await _picker.pickImage(source: ImageSource.camera);

    image = File(img!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFECC80A),
        centerTitle: true,
        title: Text("ulasan", style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: lebar * 0.9,
              height: tinggi * 0.2,
              color: Color(0xffF3F1F5),
              child: image == null ? SizedBox() : Image.file(image!),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              width: lebar * 0.5,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFECC80A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    aksesCamera();
                  },
                  child: const Text(
                    "Tambahkan Foto",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
