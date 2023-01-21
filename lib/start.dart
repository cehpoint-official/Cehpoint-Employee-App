import 'package:cehpoint/home.dart';
import 'package:cehpoint/man_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const start());
}

class start extends StatelessWidget {
  const start({super.key});

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
          home: const Start(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 150.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 150.w,
              ),
              Image.asset(
                'assets/logo.png',
              )
            ],
          ),
          SizedBox(
            height: 60.h,
          ),
          GestureDetector(
            onTap: (() {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const man_home()),
              );
            }),
            child: Container(
              width: 317.w,
              height: 45.h,
              decoration: BoxDecoration(
                  color: Color(hexColor('#D4C00B')),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 50.w,
                      ),
                      Image.asset(
                        'assets/manager.png',
                        height: 20.h,
                        width: 20.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'LOGIN AS MANAGER',
                        style: TextStyle(color: Colors.white, fontSize: 20.sp),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'OR',
            style: TextStyle(fontSize: 20.sp),
          ),
          SizedBox(
            height: 30.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const home()),
              );
            },
            child: Container(
              width: 317.w,
              height: 45.h,
              decoration: BoxDecoration(
                  color: Color(hexColor('#D4C00B')),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 50.w,
                      ),
                      Image.asset(
                        'assets/manager.png',
                        height: 20.h,
                        width: 20.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'LOGIN AS EMPLOYEE',
                        style: TextStyle(color: Colors.white, fontSize: 20.sp),
                      ),
                    ],
                  ),
                ],
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
