import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'B03PageUi.dart';

class B02PageUi extends StatefulWidget {
  const B02PageUi({super.key});

  @override
  State<B02PageUi> createState() => _B02PageUiState();
}

class _B02PageUiState extends State<B02PageUi> {
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
                "Login here",
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1F41BB),
                ),
              ),
              const SizedBox(height: 20),
              // ข้อความต้อนรับ
              Text(
                "Welcome back you’ve\nbeen missed!",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 50),

              // Email Field (แบบมีเส้นขอบสีน้ำเงินตามรูป)
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFF1F4FF),
                  hintText: 'Email',
                  hintStyle: GoogleFonts.poppins(color: Colors.grey[600]),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Color(0xFF1F41BB), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: Color(0xFF1F41BB), width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password Field (แบบสีพื้นหลังเรียบ)
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFF1F4FF),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.poppins(color: Colors.grey[600]),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot your password?',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF1F41BB),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Sign in Button (มีเงาสีน้ำเงิน)
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
                    'Sign in',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Create new account
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const B03PageUi()));
                },
                child: Text(
                  'Create new account',
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

              // Social Icons (แบบปุ่มสี่เหลี่ยมมนสีเทาอ่อนตามรูป)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      image: AssetImage('assets/images/google.png'),
                      width: 30,
                      height: 30),
                  const SizedBox(width: 15),
                  Image(
                      image: AssetImage('assets/images/facebook2.png'),
                      width: 30,
                      height: 30),
                  const SizedBox(width: 15),
                  Image(
                      image: AssetImage('assets/images/apple.png'),
                      width: 30,
                      height: 30),
                ],
              ),

              const SizedBox(height: 60), // เว้นระยะขอบล่างสุด
            ],
          ),
        ),
      ),
    );
  }

  // Helper สำหรับปุ่มโซเชียลสี่เหลี่ยม
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
