import 'package:cehpoint/payment.dart';
import 'package:cehpoint/task_details_man.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const my_task_com());
}

class my_task_com extends StatelessWidget {
  const my_task_com({super.key});

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
          home: const My_task_com(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class My_task_com extends StatelessWidget {
  const My_task_com({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Image.asset('assets/logo.png'),
              SizedBox(
                width: 170.w,
              ),
              const Icon(Icons.phone),
              SizedBox(
                width: 15.w,
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/chat.png'),
              ),
              SizedBox(
                width: 15.w,
              ),
              GestureDetector(onTap: () {}, child: const Icon(Icons.more_vert)),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                'MY TASK',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
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
                      width: 10.w,
                    ),
                    const Icon(
                      Icons.verified,
                      size: 20,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'TASK-1',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 190.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const task_details_man()),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
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
                      width: 10.w,
                    ),
                    const Icon(
                      Icons.verified,
                      size: 20,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'TASK-2',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 190.w,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
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
                      width: 10.w,
                    ),
                    const Icon(
                      Icons.verified,
                      size: 20,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'TASK-3',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 190.w,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
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
                      width: 10.w,
                    ),
                    const Icon(
                      Icons.verified,
                      size: 20,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'TASK-4',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 190.w,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
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
                      width: 10.w,
                    ),
                    const Icon(
                      Icons.verified,
                      size: 20,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'TASK-5',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 190.w,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
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
                      width: 10.w,
                    ),
                    const Icon(
                      Icons.verified,
                      size: 20,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'TASK-6',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 190.w,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 317.w,
            height: 160.h,
            decoration: BoxDecoration(
                color: Color(hexColor('#FFFCED')),
                borderRadius: BorderRadius.circular(12.r)),
            child: Column(
              children: [
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.h,
                    ),
                    Text(
                      'You have completed all the tasks',
                      style: TextStyle(fontSize: 20.sp, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const payment()),
                    );
                  },
                  child: Container(
                    width: 220.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        color: Color(hexColor('#D4C00B')),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        Text(
                          'Get your payment',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
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
