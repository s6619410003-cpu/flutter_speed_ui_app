import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'A01PageUi.dart';

class A02PageUi extends StatefulWidget {
  const A02PageUi({super.key});

  @override
  State<A02PageUi> createState() => _A02PageUiState();
}

class _A02PageUiState extends State<A02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 75.0, right: 75.0),
                child: Row(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Text(
                      "9:19",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.signal_cellular_alt, size: 18),
                    SizedBox(width: 10),
                    Icon(Icons.wifi, size: 18),
                    SizedBox(width: 10),
                    Icon(FontAwesomeIcons.batteryEmpty, size: 18),
                  ],
                ),
              ),
              SizedBox(height: 80),
              // Header
              Text(
                "Welcome Back",
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF333333),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Diam maecenas mi non sed ut odio. Non, justo,\nsed facilisi et.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color(0xFF666666),
                ),
              ),
              const SizedBox(height: 50),

              // Username Field
              _buildInputField('Username , Email & Phone Number'),
              const SizedBox(height: 20),

              // Password Field
              _buildInputField('Password', isPassword: true),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password ?',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF333333),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Sign In Button
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => A01PageUi()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF98F1), // สีชมพูตามรูป
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Sign in',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),

              // Divider Section
              Row(
                children: [
                  const Expanded(
                      child: Divider(thickness: 1, color: Color(0xFFFF98F1))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or Sign up With",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0x55525252),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Expanded(
                      child: Divider(thickness: 1, color: Color(0xFFFF98F1))),
                ],
              ),
              const SizedBox(height: 30),

              // Social Icons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Image(
                        image: AssetImage('assets/images/google.png'),
                        width: 30,
                        height: 30),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {},
                      child: Image(
                        image: AssetImage('assets/images/facebook2.png'),
                        width: 30,
                        height: 30,
                      )),
                  const SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {},
                      child: Image(
                        image: AssetImage('assets/images/apple.png'),
                        width: 30,
                        height: 30,
                      )),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // Widget สำหรับสร้าง Input Field ให้เหมือนรูป
  Widget _buildInputField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF3F3F3), // สีเทาอ่อน
        hintText: hint,
        hintStyle: GoogleFonts.poppins(color: Colors.grey, fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
          borderSide: BorderSide.none, // ไม่มีเส้นขอบตามรูป
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      ),
    );
  }

  // Widget สำหรับสร้างไอคอนโซเชียล
  Widget _socialButton(IconData icon, Color bgColor, Color iconColor) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Center(
        child: FaIcon(icon, color: iconColor, size: 28),
      ),
    );
  }
}
