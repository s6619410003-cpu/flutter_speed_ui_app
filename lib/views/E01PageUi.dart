import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'E02PageUi.dart';

class E01PageUi extends StatefulWidget {
  const E01PageUi({super.key});

  @override
  State<E01PageUi> createState() => _E01PageUiState();
}

class _E01PageUiState extends State<E01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 1. รูปภาพผลไม้ส่วนกลาง
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(
                  'assets/images/img1.png', // เปลี่ยนเป็นชื่อไฟล์รูปภาพของคุณ
                  height: MediaQuery.of(context).size.height * 0.45,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 40),

              // 2. ชื่อแบรนด์ BERRY JUICE
              Text(
                "BERRY JUICE",
                style: GoogleFonts.poppins(
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      color: Colors.orange.withOpacity(0.3),
                      offset: const Offset(2, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),

              // 3. สโลแกนบรรยาย
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "A \"Moments of healthy sip\nThe best vitamin for your health",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    height: 1.4,
                  ),
                ),
              ),
              const SizedBox(height: 60),

              // 4. ปุ่ม Explore Now สีส้มพร้อมไอคอนลูกศร
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const E02PageUi()));
                      // นำทางไปยังหน้าถัดไป
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFA726), // สีส้มโทนสว่าง
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 20), // ให้ข้อความอยู่กลาง
                        Text(
                          "Explore Now",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Color(0xFFFFA726),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
