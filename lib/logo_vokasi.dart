import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoVokasi extends StatelessWidget {
  const LogoVokasi({Key? key, this.isColored = false}) : super(key: key);

  final bool isColored;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(isColored
            ? '../assets/logo_vokasi-orange.png'
            : '../assets/logo_vokasi-putih.png'),
        const SizedBox(height: 25.54),
      ],
    );
  }
}
