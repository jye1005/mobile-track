import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: MyProfile(),
        ),
      ),
    );
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 2.3,
      decoration: BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 340, left: 107, right: 107),
            child: Container(
              height: 215,
              decoration: ShapeDecoration(
                color: Color(0xFFD9D9D9),
                shape: CircleBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 108,
            top: 604,
            child: Text(
              '신지혜 \n2004.10.05\nKyungHee Univ. \nAritificial Intelligence 23',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF393939),
                fontSize: 18,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 52,
            top: 745,
            child: Text(
              '#Career',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF393939),
                fontSize: 20,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 160,
            top: 926,
            child: Text(
              '#Career',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF393939),
                fontSize: 25,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 165,
            top: 1450,
            child: Text(
              '#Plus',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF393939),
                fontSize: 25,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 143,
            top: 1803,
            child: Text(
              '#Account',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF393939),
                fontSize: 25,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 237,
            top: 1029,
            child: Text(
              '2023.03.01\n경희대 입학',
              style: TextStyle(
                color: Color(0xFF393939),
                fontSize: 13,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 118,
            top: 1135,
            child: Text(
              '2024.03.01\n2학년 1학기',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF393939),
                fontSize: 13,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 244,
            top: 1155,
            child: Text(
              'KhuThon\n우수상',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF393939),
                fontSize: 11,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 1206,
            child: Text(
              'Khureative\nStartUp Dream\n창의상',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF393939),
                fontSize: 11,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 237,
            top: 1234,
            child: Text(
              '2024.09.01\n2학년 2학기',
              style: TextStyle(
                color: Color(0xFF393939),
                fontSize: 13,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 187,
            top: 745,
            child: Text(
              '#Plus',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF393939),
                fontSize: 20,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 291,
            top: 745,
            child: Text(
              '#Account',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF393939),
                fontSize: 20,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 160,
            child: Center(
              child: Text(
                'Welcome to My Profile',
                style: TextStyle(
                  color: Color(0xFF393939),
                  fontSize: 30,
                  fontFamily: 'Freesentation',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 140,
            top: 231,
            child: Text(
              '안녕하세요 \n신지혜라고 합니다.\n반갑습니다! ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF393939),
                fontSize: 20,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 150,
            top: 756,
            child: Container(
              width: 4,
              height: 4,
              decoration: ShapeDecoration(
                color: Color(0xFF393939),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 259,
            top: 756,
            child: Container(
              width: 4,
              height: 4,
              decoration: ShapeDecoration(
                color: Color(0xFF393939),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 210,
            top: 1038,
            child: Container(
              width: 7,
              height: 260,
              decoration:
                  ShapeDecoration(color: Color(0xFF393939), shape: Border()),
            ),
          ),
          Positioned(
            left: 204,
            top: 1034,
            child: Container(
              width: 20,
              height: 20,
              decoration: ShapeDecoration(
                color: Color(0xFF393939),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 141,
            top: 1221,
            child: Container(
              width: 8,
              height: 8,
              decoration: ShapeDecoration(
                color: Color(0xFF393939),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
              left: 142,
              top: 1223,
              child: Container(
                  width: 75,
                  height: 2.5,
                  decoration: ShapeDecoration(
                    color: Color(0xFF393939),
                    shape: Border(),
                  ))),
          Positioned(
              left: 210,
              top: 1187,
              child: Container(
                  width: 55,
                  height: 2.5,
                  decoration: ShapeDecoration(
                    color: Color(0xFF393939),
                    shape: Border(),
                  ))),
          Positioned(
            left: 261,
            top: 1184,
            child: Container(
              width: 8,
              height: 8,
              decoration: ShapeDecoration(
                color: Color(0xFF393939),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 204,
            top: 1140,
            child: Container(
              width: 20,
              height: 20,
              decoration: ShapeDecoration(
                color: Color(0xFF393939),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 204,
            top: 1239,
            child: Container(
              width: 20,
              height: 20,
              decoration: ShapeDecoration(
                color: Color(0xFF393939),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 31,
            top: 1565,
            child: Container(
              width: 108,
              height: 131,
              decoration: BoxDecoration(
                color: Color(0xFF828282),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 71,
            top: 1874,
            child: Container(
              width: 288,
              height: 29,
              decoration: BoxDecoration(
                color: Color(0xFF828282),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 71,
            top: 1914,
            child: Container(
              width: 288,
              height: 29,
              decoration: BoxDecoration(
                color: Color(0xFF828282),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 71,
            top: 1954,
            child: Container(
              width: 288,
              height: 29,
              decoration: BoxDecoration(
                color: Color(0xFF828282),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 161,
            top: 1565,
            child: Container(
              width: 108,
              height: 131,
              decoration: BoxDecoration(
                color: Color(0xFFD1D1D1),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 291,
            top: 1565,
            child: Container(
              width: 108,
              height: 131,
              decoration: BoxDecoration(
                color: Color(0xFF828282),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 53,
            top: 1622,
            child: Text(
              'Project',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFEDEDED),
                fontSize: 18,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 185,
            top: 1624,
            child: Text(
              'Hobby',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF4B4B4B),
                fontSize: 18,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 314,
            top: 1622,
            child: Text(
              'My Pet',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFEDEDED),
                fontSize: 18,
                fontFamily: 'Freesentation',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4;

    // A와 B를 잇는 선 그리기
    canvas.drawLine(Offset(size.width * 0.5, 1034 + 20),
        Offset(size.width * 0.5, 1239 + 20), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
