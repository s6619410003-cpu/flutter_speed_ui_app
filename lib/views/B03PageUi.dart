import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'B02PageUi.dart';

class B03PageUi extends StatefulWidget {
  const B03PageUi({super.key});

  @override
  State<B03PageUi> createState() => _B03PageUiState();
}

class _B03PageUiState extends State<B03PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 60),
              // หัวข้อหลัก
              Text(
                "Create Account",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1F41BB),
                ),
              ),
              const SizedBox(height: 15),
              // ข้อความอธิบาย
              Text(
                "Create an account so you can explore all the\nexisting jobs",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 50),

              // Email Field (เน้นขอบสีน้ำเงิน)
              _buildTextField(hint: "Email", hasBorder: true),
              const SizedBox(height: 20),

              // Password Field
              _buildTextField(hint: "Password", isPassword: true),
              const SizedBox(height: 20),

              // Confirm Password Field
              _buildTextField(hint: "Confirm Password", isPassword: true),
              const SizedBox(height: 50),

              // Sign up Button (มีเงาสีน้ำเงิน)
              Container(
                width: double.infinity,
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1F41BB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Already have an account
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const B02PageUi()));
                },
                child: Text(
                  'Already have an account',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const SizedBox(height: 50),

              // Or continue with
              Text(
                "Or continue with",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF1F41BB),
                ),
              ),
              const SizedBox(height: 20),

              // Social Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialSquareButton(FontAwesomeIcons.google),
                  const SizedBox(width: 15),
                  _socialSquareButton(FontAwesomeIcons.facebookF),
                  const SizedBox(width: 15),
                  _socialSquareButton(FontAwesomeIcons.apple),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // ฟังก์ชันสร้างช่องกรอกข้อมูลให้ดูสะอาดตา
  Widget _buildTextField(
      {required String hint, bool isPassword = false, bool hasBorder = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF1F4FF),
        hintText: hint,
        hintStyle: GoogleFonts.poppins(color: Colors.grey[600], fontSize: 16),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        // ถ้าเป็นช่องแรก (Email) จะแสดงขอบสีน้ำเงินตามรูป
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: hasBorder ? const Color(0xFF1F41BB) : Colors.transparent,
            width: hasBorder ? 2 : 0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFF1F41BB), width: 2),
        ),
      ),
    );
  }

  // ปุ่มโซเชียลสี่เหลี่ยม
  Widget _socialSquareButton(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFECECEC),
        borderRadius: BorderRadius.circular(10),
      ),
      child: FaIcon(icon, color: Colors.black, size: 25),
    );
  }
}
