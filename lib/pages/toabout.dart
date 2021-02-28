import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/widgets/themes.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About us"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Image.asset(
                "assets/images/parlour-1590994911.jpg",
                fit: BoxFit.cover,
              ),
              Text(
                "Hello We are B make overs salon and we are one of the fastest growing unisex salon in Gr,NOida we are situated  in one of the  finestr society named Omaxe palm green. ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontFamily: GoogleFonts.openSansCondensed().fontFamily,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
