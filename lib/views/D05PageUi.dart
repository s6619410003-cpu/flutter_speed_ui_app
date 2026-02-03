import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'D06PageUi.dart';

class D05PageUi extends StatefulWidget {
  const D05PageUi({super.key});

  @override
  State<D05PageUi> createState() => _D05PageUiState();
}

class _D05PageUiState extends State<D05PageUi> {
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
              // หัวข้อ OTP Verification
              Text(
                "OTP Verification",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E232C),
                ),
              ),
              const SizedBox(height: 15),
              // ข้อความบรรยาย
              Text(
                "Enter the verification code we just sent on your email address.",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color(0xFF6A707C),
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 40),

              // แถวของช่องกรอกรหัส OTP 4 ช่อง
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildOTPBox(first: true, last: false),
                  _buildOTPBox(first: false, last: false),
                  _buildOTPBox(first: false, last: false),
                  _buildOTPBox(first: false, last: true),
                ],
              ),
              const SizedBox(height: 40),

              // ปุ่ม Verify
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const D06PageUi()));
                    // ตรวจสอบรหัสและไปยังหน้าถัดไป (เช่น หน้า Reset Password)
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E232C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Verify',
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

  // ฟังก์ชันสร้างช่องกรอกรหัสแต่ละช่อง
  Widget _buildOTPBox({required bool first, last}) {
    return Container(
      height: 70,
      width: 70, // ปรับขนาดให้เป็นสี่เหลี่ยมจตุรัสตามรูป
      decoration: BoxDecoration(
        color: const Color(0xFFF7F8F9),
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context)
                .nextFocus(); // เมื่อพิมพ์แล้วให้กระโดดไปช่องถัดไป
          }
          if (value.isEmpty && first == false) {
            FocusScope.of(context)
                .previousFocus(); // เมื่อลบให้กลับไปช่องก่อนหน้า
          }
        },
        showCursor: false,
        readOnly: false,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: const InputDecoration(
          counterText: "", // ซ่อนตัวเลขบอกจำนวนตัวอักษรด้านล่าง
          border: InputBorder.none,
        ),
      ),
    );
  }
}
