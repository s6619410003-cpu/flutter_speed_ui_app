import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'D07PageUi.dart';

class D06PageUi extends StatefulWidget {
  const D06PageUi({super.key});

  @override
  State<D06PageUi> createState() => _D06PageUiState();
}

class _D06PageUiState extends State<D06PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              // หัวข้อ Create new password
              Text(
                "Create new password",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E232C),
                ),
              ),
              const SizedBox(height: 15),
              // ข้อความอธิบาย
              Text(
                "Your new password must be unique from those previously used.",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color(0xFF6A707C),
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 40),

              // ช่องกรอก New Password
              _buildPasswordField(hint: "New Password"),
              const SizedBox(height: 15),

              // ช่องกรอก Confirm Password
              _buildPasswordField(hint: "Confirm Password"),
              const SizedBox(height: 40),

              // ปุ่ม Reset Password
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const D07PageUi()));
                    // แสดง Dialog ความสำเร็จ หรือกลับไปหน้า Login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E232C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Reset Password',
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

  // ฟังก์ชันสร้างช่องรหัสผ่าน
  Widget _buildPasswordField({required String hint}) {
    return TextField(
      obscureText: true,
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
}
