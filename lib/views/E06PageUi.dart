import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class E06PageUi extends StatefulWidget {
  const E06PageUi({super.key});

  @override
  State<E06PageUi> createState() => _E06PageUiState();
}

class _E06PageUiState extends State<E06PageUi> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;

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
                    'assets/images/img4.png', // รูปภาพส้มธีมหลัก
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),

                  // 2. หัวข้อ Create New Password
                  Text(
                    "Create New Password",
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Enter new password",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // 3. ช่องกรอก New Password (มีเส้นขอบสีส้มตามรูป)
                  TextField(
                    obscureText: _isObscure1,
                    decoration: InputDecoration(
                      hintText: "Enter New password",
                      hintStyle: GoogleFonts.poppins(color: Colors.grey),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.orange, width: 2), // เส้นขอบสีส้ม
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Colors.orange, width: 2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  // 4. ช่องกรอก Confirm password
                  TextField(
                    obscureText: _isObscure2,
                    decoration: InputDecoration(
                      hintText: "Confirm password",
                      hintStyle: GoogleFonts.poppins(color: Colors.grey),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 20),
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

                  // 5. ปุ่ม Submit สีส้มมนรี
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        // ดำเนินการเปลี่ยนรหัสผ่าน
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFA726),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        "Submit",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Clipper ตัวเดิมเพื่อให้ความโค้งมนของรูปภาพเท่ากันทุกหน้า
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
