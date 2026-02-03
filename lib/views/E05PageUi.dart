import 'package:flutter/material.dart';
import 'package:flutter_iot_application_app/views/E06PageUi.dart';
import 'package:google_fonts/google_fonts.dart';

class E05PageUi extends StatefulWidget {
  const E05PageUi({super.key});

  @override
  State<E05PageUi> createState() => _E05PageUiState();
}

class _E05PageUiState extends State<E05PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('OTP Verification'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: const Color(0xFFFFF3E0), // สีส้มอ่อนมากตามรูป
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new,
                  size: 18, color: Color(0xFFFFA726)),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // 1. ภาพประกอบ (Illustration)
              Image.asset(
                'assets/images/img2.png', // เปลี่ยนเป็นรูปคนถือมือถือตามไฟล์ของคุณ
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 40),

              // 2. ข้อความหัวข้อ
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter OTP",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "An 4 digit code has been sent to your\nemail",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // 3. ช่องกรอก OTP 4 หลัก (สไตล์สี่เหลี่ยมมนสีเทาอ่อน)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildOTPBox(first: true, last: false),
                  _buildOTPBox(first: false, last: false),
                  _buildOTPBox(first: false, last: false),
                  _buildOTPBox(first: false, last: true),
                ],
              ),
              const SizedBox(height: 30),

              // 4. ข้อความนับเวลาถอยหลัง
              RichText(
                text: TextSpan(
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 16),
                  children: [
                    const TextSpan(text: "You should recieve the OTP in "),
                    TextSpan(
                      text: "30 Second",
                      style: GoogleFonts.poppins(
                        color: const Color(0xFFFFA726),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // 5. ปุ่ม Verify สีส้มมนรี
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const E06PageUi()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFA726),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    "Verify",
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Widget สำหรับสร้างช่อง OTP
  Widget _buildOTPBox({required bool first, last}) {
    return Container(
      height: 70,
      width: 65,
      decoration: BoxDecoration(
        color: const Color(0xFFE0E0E0).withOpacity(0.5), // สีเทาอ่อนตามรูป
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: const InputDecoration(
          counterText: "",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
