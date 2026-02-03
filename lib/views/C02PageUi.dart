import 'package:flutter/material.dart';
import 'package:flutter_iot_application_app/views/C03PageUi.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class C02PageUi extends StatefulWidget {
  const C02PageUi({super.key});

  @override
  State<C02PageUi> createState() => _C02PageUiState();
}

class _C02PageUiState extends State<C02PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(height: 50),
              // 1. โลโก้ H ในกรอบสี่เหลี่ยมมน
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Image(
                      image: const AssetImage('assets/images/img10.png'),
                      width: 40,
                      height: 40),
                ),
              ),
              const SizedBox(height: 60),

              // 2. หัวข้อ Sign in
              Text(
                "Sign in your account",
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),

              // 3. ช่อง Email
              _buildLabel("Email"),
              _buildTextField(hint: "ex: jon.smith@email.com"),
              const SizedBox(height: 20),

              // 4. ช่อง Password
              _buildLabel("Password"),
              _buildTextField(hint: "*********", isPassword: true),
              const SizedBox(height: 40),

              // 5. ปุ่ม SIGN IN สีเขียว
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00C853), // เขียวสด
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'SIGN IN',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // 6. or sign in with
              Text(
                "or sign in with",
                style: GoogleFonts.poppins(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 25),

              // 7. Social Buttons (Google, Facebook, Twitter)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: const AssetImage('assets/images/google.png'),
                  ),
                  SizedBox(width: 15),
                  Image(
                    image: const AssetImage('assets/images/facebook2.png'),
                  ),
                  SizedBox(width: 15),
                  Image(
                    image: const AssetImage('assets/images/twitter.png'),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              // 8. Don't have an account? SIGN UP
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: GoogleFonts.poppins(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const C03PageUi()));
                      // Navigator.push ไปหน้า Register ของคุณ
                    },
                    child: Text(
                      "SIGN UP",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF00C853),
                        fontWeight: FontWeight.bold,
                      ),
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

  // ส่วนเสริม: หัวข้อเหนือช่องกรอก
  Widget _buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.grey.shade700,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  // ส่วนเสริม: ช่องกรอกข้อมูล
  Widget _buildTextField({required String hint, bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF8F9FA),
        hintText: hint,
        hintStyle: GoogleFonts.poppins(color: Colors.grey.shade400),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      ),
    );
  }

  // ส่วนเสริม: ปุ่ม Social
  Widget _socialButton(IconData icon, Color color) {
    return Container(
      width: 70,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F3F4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: FaIcon(icon, color: color, size: 25),
      ),
    );
  }
}
