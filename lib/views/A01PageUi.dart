import 'package:flutter/material.dart';
import 'A02PageUi.dart';

class A01PageUi extends StatefulWidget {
  const A01PageUi({super.key});

  @override
  State<A01PageUi> createState() => _A01PageUiState();
}

class _A01PageUiState extends State<A01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3, // ให้กินพื้นที่ประมาณ 60% ของจอ
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF9BE8), // สีชมพูตามรูป
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/img7.png'), // **อย่าลืมเอารูปมาใส่**
                    fit: BoxFit.scaleDown, // จัดรูปให้พอดี
                  ),
                ),
              ),
            ),
          ),
          // ---------------------------------------------
          // ส่วนที่ 2: ข้อความตรงกลาง
          // ---------------------------------------------
          Expanded(
            flex: 2, // พื้นที่ส่วนข้อความ
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Discover Your\nOwn Dream House",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nDiam maecenas mi non sed ut odio. Non, justo, sed facilisi\net. Eget viverra urna, vestibulum egestas faucibus\negestas. Sagittis nam velit volutpat eu nunc.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                    ),
                  ),

                  const Spacer(), // ดันปุ่มลงไปข้างล่าง

                  // ---------------------------------------------
                  // ส่วนที่ 3: ปุ่ม Sign in / Register
                  // ---------------------------------------------
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey[200], // สีพื้นหลังเทาๆ ของปุ่มใหญ่
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        // ปุ่ม Sign in (สีชมพู)
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF9BE8),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              elevation: 0,
                            ),
                            child: const Text("Sign in",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const A02PageUi(),
                                  ));
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60), // เว้นระยะขอบล่างสุด
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
