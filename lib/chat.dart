import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const chat());
}

class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ((context, child) {
        return MaterialApp(
          theme: ThemeData(
            textTheme: GoogleFonts.interTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          home: const Chat(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Employee Messages',
          style: TextStyle(
              color: Colors.black,
              fontSize: 25.sp,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h, left: 8.w),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 8.w, right: 7.w),
              leading: Container(
                child: CircleAvatar(
                  radius: 27.r,
                  backgroundColor: Color(hexColor('#D4C00B')),
                  child: Image.asset('assets/manager.png'),
                ),
              ),
              title: Text(
                'Employee 1',
                style: TextStyle(
                    fontSize: 19.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'I completed my...',
                style: TextStyle(fontSize: 16.sp, color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 8.w, right: 7.w),
              leading: Container(
                child: CircleAvatar(
                  radius: 27.r,
                  backgroundColor: Color(hexColor('#D4C00B')),
                  child: Image.asset('assets/manager.png'),
                ),
              ),
              title: Text(
                'Employee 2',
                style: TextStyle(
                    fontSize: 19.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'I completed my...',
                style: TextStyle(fontSize: 16.sp, color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: ListTile(
              contentPadding: EdgeInsets.only(left: 8.w, right: 7.w),
              leading: Container(
                child: CircleAvatar(
                  radius: 27.r,
                  backgroundColor: Color(hexColor('#D4C00B')),
                  child: Image.asset('assets/manager.png'),
                ),
              ),
              title: Text(
                'Employee 3',
                style: TextStyle(
                    fontSize: 19.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'I completed my...',
                style: TextStyle(fontSize: 16.sp, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

int hexColor(String c) {
  String sColor = '0xff$c';
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}
