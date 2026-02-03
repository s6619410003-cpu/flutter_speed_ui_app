import 'package:flutter/material.dart';
import 'package:flutter_iot_application_app/views/HomeUi.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
      //เรียกใช้งานคลาสที่เรียกใช้ widget หลักของแอป
      FlutterSpeedUiApp());
}

//---------------------------------
class FlutterSpeedUiApp extends StatefulWidget {
  const FlutterSpeedUiApp({super.key});
  @override
  State<FlutterSpeedUiApp> createState() => _FlutterSpeedUiAppState();
}

class _FlutterSpeedUiAppState extends State<FlutterSpeedUiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //ซ่อนป้าย Debug
      home: HomeUi(), //กำหนดหน้าจอแรก
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
