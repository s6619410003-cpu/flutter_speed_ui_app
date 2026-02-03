import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'D02PageUi.dart';

class D01PageUi extends StatefulWidget {
  const D01PageUi({super.key});

  @override
  State<D01PageUi> createState() => _D01PageUiState();
}

class _D01PageUiState extends State<D01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // เลเยอร์ที่ 1: รูปภาพพื้นหลังเต็มจอ
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img5.png'),
                fit: BoxFit.cover, // ให้รูปขยายเต็มหน้าจอ
              ),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 120),
                Image(
                  image: AssetImage('assets/images/img3.png'),
                  width: 500,
                  height: 500,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 15,
          ), // ดันปุ่มลงไปด้านล่าง

          // ส่วนของปุ่มกด
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              children: [
                SizedBox(height: 550),
                _buildButton(
                  text: 'Login',
                  color: const Color(0xFF1E232C),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const D02PageUi()));
                  },
                ),
                const SizedBox(height: 15),
                _buildButton(
                  text: 'Register',
                  color: Colors.white.withOpacity(0.9), // ปุ่มขาวกึ่งใส
                  textColor: Colors.black,
                  isOutlined: true,
                  onPressed: () {},
                ),
                const SizedBox(height: 25),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Continue as a guest",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF00C2CB),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ฟังก์ชันช่วยสร้างปุ่มให้โค้ดสะอาดขึ้น
Widget _buildButton(
    {required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
    bool isOutlined = false}) {
  return SizedBox(
    width: double.infinity,
    height: 56,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        side: isOutlined
            ? const BorderSide(color: Colors.black, width: 1.5)
            : null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: isOutlined ? 0 : 5,
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
            color: textColor, fontSize: 18, fontWeight: FontWeight.w600),
      ),
    ),
  );
}
