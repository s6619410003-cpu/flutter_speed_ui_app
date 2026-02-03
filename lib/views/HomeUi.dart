import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'A01PageUi.dart';
import 'B01PageUi.dart';
import 'C01PageUi.dart';
import 'D01PageUi.dart';
import 'E01PageUi.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF390050),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.asset(
                'assets/images/img6.png',
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => A01PageUi(),
                  ),
                );
              },
              child: Text('Go to A Page',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.85,
                  MediaQuery.of(context).size.height * 0.07,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Color(0xFFF89AEE),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: GoogleFonts.inter(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => B01PageUi(),
                  ),
                );
              },
              child: Text('Go to B Page',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.85,
                  MediaQuery.of(context).size.height * 0.07,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Color(0xFFF1F41BB),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: GoogleFonts.inter(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => C01PageUi(),
                  ),
                );
              },
              child: Text('Go to C Page',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.85,
                  MediaQuery.of(context).size.height * 0.07,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Color(0xFF00B140),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: GoogleFonts.inter(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => D01PageUi(),
                  ),
                );
              },
              child: Text('Go to D Page',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.85,
                  MediaQuery.of(context).size.height * 0.07,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Color(0xFFF35C2C1),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: GoogleFonts.inter(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => E01PageUi(),
                  ),
                );
              },
              child: Text('Go to E Page',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.85,
                  MediaQuery.of(context).size.height * 0.07,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Color(0xFFFF69515),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: GoogleFonts.inter(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
