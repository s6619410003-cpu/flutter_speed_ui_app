import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class E03PageUi extends StatefulWidget {
  const E03PageUi({super.key});

  @override
  State<E03PageUi> createState() => _E03PageUiState();
}

class _E03PageUiState extends State<E03PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. ส่วนรูปภาพด้านบนพร้อมปุ่มย้อนกลับ (ใช้ Clipper ตัวเดิมจากหน้า E02)
            Stack(
              children: [
                ClipPath(
                  clipper: CustomImageClipper(),
                  child: Image.asset(
                    'assets/images/img4.png', // รูปส้มตัวเดียวกับหน้า Login
                    height: MediaQuery.of(context).size.height * 0.2,
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
                children: [
                  const SizedBox(height: 10),
                  // 2. หัวข้อ Register
                  Text(
                    "Register",
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Create your new account",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 25),

                  // 3. ฟิลด์กรอกข้อมูล (Name, E-mail, Phone, Password)
                  _buildTextField(hint: "Name"),
                  const SizedBox(height: 15),
                  _buildTextField(hint: "E-mail"),
                  const SizedBox(height: 15),
                  _buildTextField(hint: "Phone"),
                  const SizedBox(height: 15),
                  _buildTextField(hint: "Password", isPassword: true),

                  const SizedBox(height: 20),

                  // 4. ข้อความ Terms & Conditions
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 13),
                      children: [
                        const TextSpan(text: "By signing up you agree to our "),
                        TextSpan(
                          text: "Terms & Conditions",
                          style: GoogleFonts.poppins(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(text: "\nand "),
                        TextSpan(
                          text: "Privacy Policy",
                          style: GoogleFonts.poppins(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),

                  // 5. ปุ่ม Sign Up
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFA726),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 0,
                      ),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),

                  // 6. ส่วน OR และ Social
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("OR",
                            style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _socialIcon('assets/images/google.png'),
                      const SizedBox(width: 25),
                      _socialIcon('assets/images/facebook2.png'),
                      const SizedBox(width: 25),
                      _socialIcon('assets/images/apple.png'),
                    ],
                  ),
                  const SizedBox(height: 25),

                  // 7. ลิงก์ไปหน้า Login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an Account? ",
                          style: GoogleFonts.poppins()),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Text(
                          "Log In",
                          style: GoogleFonts.poppins(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({required String hint, bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.poppins(color: Colors.grey, fontSize: 14),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
    );
  }

  Widget _socialIcon(String path) {
    return Image.asset(path, width: 35, height: 35);
  }
}

// ใช้ CustomImageClipper ตัวเดียวกับหน้า E02
class CustomImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 2, size.height + 20, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
