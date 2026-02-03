import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'D03PageUi.dart';
import 'D04PageUi.dart';

class D02PageUi extends StatefulWidget {
  const D02PageUi({super.key});

  @override
  State<D02PageUi> createState() => _D02PageUiState();
}

class _D02PageUiState extends State<D02PageUi> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // ส่วนปุ่มย้อนกลับที่แก้ไขวงเล็บเรียบร้อยแล้ว
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new,
                  size: 18, color: Colors.black),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              // หัวข้อหลัก
              Text(
                "Welcome back! Glad\nto see you, Again!",
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E232C),
                ),
              ),
              const SizedBox(height: 40),

              // ช่องกรอก Email
              _buildTextField(hint: "Enter your email"),
              const SizedBox(height: 15),

              // ช่องกรอก Password
              TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFF7F8F9),
                  hintText: "Enter your password",
                  hintStyle: GoogleFonts.poppins(color: Colors.grey),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                ),
              ),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const D04PageUi()));
                  },
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.poppins(
                        color: const Color(0xFF6A707C),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // ปุ่ม Login
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E232C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 35),

              // ตัวคั่น Or
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey.shade300)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or Login with",
                        style:
                            GoogleFonts.poppins(color: Colors.grey.shade600)),
                  ),
                  Expanded(child: Divider(color: Colors.grey.shade300)),
                ],
              ),
              const SizedBox(height: 25),

              // ปุ่มโซเชียล (ใช้ Container ครอบเพื่อให้ดูเหมือนปุ่ม)
              Row(
                children: [
                  _buildSocialIcon('assets/images/facebook1.png'),
                  const SizedBox(width: 15),
                  _buildSocialIcon('assets/images/google.png'),
                  const SizedBox(width: 15),
                  _buildSocialIcon('assets/images/apple.png'),
                ],
              ),

              const SizedBox(height: 250), // ปรับระยะห่างให้พอดี (ลดจาก 300)

              // สมัครสมาชิกใหม่
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ", style: GoogleFonts.poppins()),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const D03PageUi()));
                    },
                    child: Text(
                      "Register Now",
                      style: GoogleFonts.poppins(
                          color: const Color(0xFF35C2C1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ฟังก์ชันช่วยสร้าง TextField
  Widget _buildTextField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF7F8F9),
        hintText: hint,
        hintStyle: GoogleFonts.poppins(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
      ),
    );
  }

  // ฟังก์ชันสร้างปุ่ม Social ให้สวยงามเหมือนในรูป
  Widget _buildSocialIcon(String imagePath) {
    return Expanded(
      child: Container(
        height: 56,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(imagePath, fit: BoxFit.contain),
      ),
    );
  }
}
