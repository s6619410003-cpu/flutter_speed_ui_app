import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'B02PageUi.dart';
import 'B03PageUi.dart';

class B01PageUi extends StatefulWidget {
  const B01PageUi({super.key});

  @override
  State<B01PageUi> createState() => _B01PageUiState();
}

class _B01PageUiState extends State<B01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),
            // ส่วนรูปภาพประกอบ (ต้องมีไฟล์รูปใน assets/images/ นะครับ)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(
                'assets/images/img11.png', // เปลี่ยนชื่อไฟล์ให้ตรงกับที่คุณมี
                height: 350,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 40),

            // หัวข้อ
            Text(
              "Discover Your\nDream Job here",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1F41BB), // สีน้ำเงินตามรูป
              ),
            ),
            const SizedBox(height: 20),

            // คำบรรยาย
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Explore all the existing job roles based on your interest and study major",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 60), // ดันปุ่มลงไปด้านล่าง =spacer

            // ส่วนของปุ่ม Login และ Register
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Row(
                children: [
                  // ปุ่ม Login (สีน้ำเงินมีเงา)
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF1F41BB).withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const B02PageUi()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1F41BB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  // ปุ่ม Register (ตัวอักษรสีดำ)
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const B03PageUi()));
                        },
                        child: Text(
                          'Register',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
