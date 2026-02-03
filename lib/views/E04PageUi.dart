import 'package:flutter/material.dart';
import 'package:flutter_iot_application_app/views/E03PageUi.dart';
import 'package:google_fonts/google_fonts.dart';

import 'E05PageUi.dart';

class E04PageUi extends StatefulWidget {
  const E04PageUi({super.key});

  @override
  State<E04PageUi> createState() => _E04PageUiState();
}

class _E04PageUiState extends State<E04PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. ส่วนรูปภาพส้มด้านบนพร้อมปุ่มย้อนกลับ (ใช้ Clipper เดียวกับทั้งโปรเจกต์)
            Stack(
              children: [
                ClipPath(
                  clipper: CustomImageClipper(),
                  child: Image.asset(
                    'assets/images/img4.png', // รูปภาพส้ม
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.7),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new,
                          size: 18, color: Colors.orange),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // จัดข้อความชิดซ้ายตามรูป
                children: [
                  const SizedBox(height: 40),

                  // 2. หัวข้อ Forgot your password?
                  Text(
                    "Forgot your password?",
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Enter email address",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // 3. ช่องกรอก Email
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // 4. ปุ่ม Send code สีส้ม
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const E05PageUi()));
                        //Navigator.push ไปหน้า E05 (OTP)
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFA726),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(30), // ปุ่มมนรีตามรูป
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        "Send code",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 150), // เว้นระยะดันข้อความล่างลงไป

                  // 5. ลิงก์ Create Account ด้านล่างสุด
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account? ",
                        style: GoogleFonts.poppins(color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const E03PageUi()));
                          // ไปหน้า Register (E03)
                        },
                        child: Text(
                          "Create Account",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFFFFA726),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Clipper สำหรับตัดรูปภาพเส้นโค้ง (ใช้ตัวเดิมเพื่อให้ดีไซน์เหมือนกันทุกหน้า)
class CustomImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height + 20, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
