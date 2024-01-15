import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFFFD),
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Color(0xFFFBFFFD),
        leading: Icon(
          Icons.list,
          size: 40,
        ),
        title: Image.asset(
          'images/logo.png',
          scale: 3,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 40,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Image.asset(
              'images/1.png',
              scale: .8,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Chocolate\nFrappuccino',
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "\$20.00",
                  style: GoogleFonts.poppins(
                    color: Color(0xFF00623B),
                    fontSize: 40,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
                style: GoogleFonts.montserrat(
                  color: Color(0xFF6D6D6D),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
                style: GoogleFonts.montserrat(
                  color: Color(0xFF6D6D6D),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Color(0xFF00623B),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0, 4),
                        blurRadius: 8,
                        spreadRadius: 0),
                  ]),
              child: Center(
                child: Text(
                  "add to bag",
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
