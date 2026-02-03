import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class D07PageUi extends StatefulWidget {
  const D07PageUi({super.key});

  @override
  State<D07PageUi> createState() => _D07PageUiState();
}

class _D07PageUiState extends State<D07PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // จัดให้อยู่กึ่งกลางหน้าจอ
            children: [
              // 1. ไอคอนติ๊กถูกสีเขียว
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF), // สีเขียวตามรูป
                    shape: BoxShape.circle,
                  ),
                  child: Image(image: AssetImage('assets/images/img9.png')),
                ),
              ),
              const SizedBox(height: 35),

              // 2. หัวข้อ Password Changed!
              Text(
                "Password Changed!",
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E232C),
                ),
              ),
              const SizedBox(height: 15),

              // 3. ข้อความยืนยัน
              Text(
                "Your password has been changed\nsuccessfully.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color(0xFF6A707C),
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 40),

              // 4. ปุ่ม Back to Login
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // ล้าง Stack ทั้งหมดแล้วกลับไปหน้า Login (D02)
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E232C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Back to Login',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
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
