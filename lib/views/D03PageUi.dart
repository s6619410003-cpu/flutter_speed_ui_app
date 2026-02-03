import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class D03PageUi extends StatefulWidget {
  const D03PageUi({super.key});

  @override
  State<D03PageUi> createState() => _D03PageUiState();
}

class _D03PageUiState extends State<D03PageUi> {
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              // หัวข้อ Hello! Register to get started
              Text(
                "Hello! Register to get\nstarted",
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E232C),
                ),
              ),
              const SizedBox(height: 40),

              // ช่องกรอกข้อมูลต่างๆ
              _buildTextField(hint: "Username"),
              const SizedBox(height: 15),
              _buildTextField(hint: "Email"),
              const SizedBox(height: 15),
              _buildTextField(hint: "Password", isPassword: true),
              const SizedBox(height: 15),
              _buildTextField(hint: "Confirm password", isPassword: true),

              const SizedBox(height: 30),

              // ปุ่ม Register
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // ดำเนินการลงทะเบียน
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E232C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Register',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 35),

              // ตัวคั่น Or Register with
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey.shade300)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or Register with",
                        style:
                            GoogleFonts.poppins(color: Colors.grey.shade600)),
                  ),
                  Expanded(child: Divider(color: Colors.grey.shade300)),
                ],
              ),
              const SizedBox(height: 25),

              // ปุ่มโซเชียล
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      image: const AssetImage('assets/images/facebook1.png'),
                      height: 24),
                  const SizedBox(width: 30),
                  Image(
                      image: const AssetImage('assets/images/google.png'),
                      height: 24),
                  const SizedBox(width: 30),
                  Image(
                      image: const AssetImage('assets/images/apple.png'),
                      height: 24),
                ],
              ),
              const SizedBox(height: 40),

              // กลับไปหน้า Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ",
                      style: GoogleFonts.poppins()),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      "Login Now",
                      style: GoogleFonts.poppins(
                          color: const Color(0xFF35C2C1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // ฟังก์ชันช่วยสร้าง TextField ให้เหมือนแบบ
  Widget _buildTextField({required String hint, bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF7F8F9),
        hintText: hint,
        hintStyle: GoogleFonts.poppins(color: Colors.grey, fontSize: 15),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
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

  // ฟังก์ชันสร้างปุ่ม Social
  Widget _buildSocialButton(IconData icon, Color color) {
    return Expanded(
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: FaIcon(icon, color: color, size: 24)),
      ),
    );
  }
}
