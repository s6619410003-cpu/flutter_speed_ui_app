import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'C02PageUi.dart';

class C01PageUi extends StatefulWidget {
  const C01PageUi({super.key});

  @override
  State<C01PageUi> createState() => _C01PageUiState();
}

class _C01PageUiState extends State<C01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // แก้ไข: ใช้ GestureDetector เป็น body หลักเพียงอันเดียว
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const C02PageUi()),
          );
        },
        // ใช้ Stack เป็นลูกของ GestureDetector เพื่อให้กดได้ทั้งหน้าจอ
        child: Stack(
          children: [
            // 1. ส่วนภาพพื้นหลังเต็มจอ
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/img8.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // 2. ส่วน Overlay สีดำจางๆ
            Container(
              color: Colors.black.withOpacity(0.1),
            ),
            // 3. ส่วนเนื้อหา (Logo และ Text)
            SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // โลโก้ตัว H
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'H',
                          style: GoogleFonts.poppins(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF00FF00),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // ชื่อองค์กร
                    Text(
                      "HOPE FOR",
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Text(
                      "HUMANITY",
                      style: GoogleFonts.poppins(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                    const SizedBox(height: 80),
                    // ข้อความต้อนรับด้านล่าง
                    Text(
                      "Welcome to",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF004D00),
                      ),
                    ),
                    Text(
                      "hope for humanity",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF004D00),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
