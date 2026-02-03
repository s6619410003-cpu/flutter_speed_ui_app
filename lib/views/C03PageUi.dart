import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'C02PageUi.dart';

class C03PageUi extends StatefulWidget {
  const C03PageUi({super.key});

  @override
  State<C03PageUi> createState() => _C03PageUiState();
}

class _C03PageUiState extends State<C03PageUi> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // 1. โลโก้ H เล็กๆ มุมขวาบนตามรูป
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xFF00C853), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'H',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF00C853),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // 2. หัวข้อ Create your account
              Text(
                "Create your account",
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),

              // 3. ฟิลด์ข้อมูลต่างๆ
              _buildLabel("Name"),
              _buildTextField(hint: "ex: jon smith"),
              const SizedBox(height: 15),

              _buildLabel("Email"),
              _buildTextField(hint: "ex: jon.smith@email.com"),
              const SizedBox(height: 15),

              _buildLabel("Password"),
              _buildTextField(hint: "*********", isPassword: true),
              const SizedBox(height: 15),

              _buildLabel("Confirm password"),
              _buildTextField(hint: "*********", isPassword: true),
              const SizedBox(height: 20),

              // 4. Checkbox เงื่อนไข
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: const Color(0xFF00C853),
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 13),
                        children: [
                          const TextSpan(text: "I understood the "),
                          TextSpan(
                            text: "terms & policy.",
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF00C853),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // 5. ปุ่ม SIGN UP
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00C853),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'SIGN UP',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // 6. or sign up with
              Text(
                "or sign up with",
                style: GoogleFonts.poppins(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 20),

              // 7. Social Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialButton(FontAwesomeIcons.google, Colors.red),
                  const SizedBox(width: 15),
                  _socialButton(
                      FontAwesomeIcons.facebookF, Colors.blue.shade800),
                  const SizedBox(width: 15),
                  _socialButton(FontAwesomeIcons.twitter, Colors.lightBlue),
                ],
              ),
              const SizedBox(height: 30),

              // 8. Have an account? SIGN IN
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account? ",
                    style: GoogleFonts.poppins(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const C02PageUi()),
                      );
                    },
                    child: Text(
                      "SIGN IN",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF00C853),
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
      ),
    );
  }

  // Helper: Label หัวข้อ
  Widget _buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: Colors.grey.shade700,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  // Helper: ช่องกรอกข้อมูล
  Widget _buildTextField({required String hint, bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF8F9FA),
        hintText: hint,
        hintStyle:
            GoogleFonts.poppins(color: Colors.grey.shade400, fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      ),
    );
  }

  // Helper: ปุ่ม Social
  Widget _socialButton(IconData icon, Color color) {
    return Container(
      width: 70,
      height: 45,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F3F4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: FaIcon(icon, color: color, size: 22),
      ),
    );
  }
}
