import 'package:flutter/material.dart';
import 'package:vokasi_app/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'logo_vokasi.dart';
import 'profile_screen.dart';

class PageLogin extends StatelessWidget {
  const PageLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: GoogleFonts.poppins(
            color: const Color(0x95484848), // adjusting color opacity
            fontWeight: FontWeight.w500, // adjusting font weight
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        // we want to align title to the left
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff484848),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              const LogoVokasi(isColored: true),
              TextFormField(
                //cek data field nya kosong
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Input Username';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 230, 125, 6), width: 0.5),
                  ),
                  labelStyle: new TextStyle(color: Colors.green),
                  hintText: 'Masukan alamat email unpak',
                ),
              ),
              TextFormField(
                //cek data field nya kosong
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Input Username';
                  }
                  return null;
                },
                //maxLength: 16,
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 230, 125, 6), width: 0.5),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'Masukkan kata sandi anda',
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Masuk'),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffee8301),
                  minimumSize: const Size(240.0, 40.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  textStyle: GoogleFonts.poppins(fontSize: 14.0),
                ),
              ),
              const SizedBox(height: 10.0),
              // Tombol Register
              ElevatedButton(
                onPressed: () {},
                child: const Text('Lupa kata sandi?'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: const Color(0xffee8301),
                  minimumSize: const Size(240.0, 40.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  textStyle: GoogleFonts.poppins(fontSize: 14.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
