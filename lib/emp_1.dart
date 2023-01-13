import 'package:cehpoint/add_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const emp_1());
}

class emp_1 extends StatelessWidget {
  const emp_1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ((context, child) {
        return MaterialApp(
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          home: const Emp_1(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Emp_1 extends StatelessWidget {
  const Emp_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'EMPLOYEE 1',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          const Icon(
            Icons.phone,
            color: Colors.blue,
          ),
          SizedBox(
            width: 20.w,
          ),
          const Icon(
            Icons.chat,
            color: Colors.black,
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Image.asset(
                'assets/employee.png',
                height: 20.h,
                width: 20.w,
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Employee 1',
                style: TextStyle(color: Colors.black, fontSize: 20.sp),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              const Icon(
                Icons.phone,
                color: Color.fromARGB(255, 141, 140, 140),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                '+91 7039494588',
                style: TextStyle(color: Colors.black, fontSize: 20.sp),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              const Icon(
                Icons.mail_outline,
                color: Color.fromARGB(255, 141, 140, 140),
              ),
              SizedBox(
                width: 15.w,
              ),
              Text(
                'employ@gomcmail.',
                style: TextStyle(color: Colors.black, fontSize: 20.sp),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: 317.w,
            height: 45.h,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 202, 55),
                borderRadius: BorderRadius.circular(12.r)),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Text(
                  '+ADD TASK',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                'TASK',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 317.w,
            height: 45.h,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 218, 202, 55),
                borderRadius: BorderRadius.circular(12.r)),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      '     TASK-1',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 210.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const add_task()),
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
                color: const Color.fromARGB(255, 218, 202, 55),
                borderRadius: BorderRadius.circular(12.r)),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      '     TASK-2',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 210.w,
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
                color: const Color.fromARGB(255, 218, 202, 55),
                borderRadius: BorderRadius.circular(12.r)),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      '     TASK-3',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 210.w,
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
                color: const Color.fromARGB(255, 218, 202, 55),
                borderRadius: BorderRadius.circular(12.r)),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      '     TASK-4',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 210.w,
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
                color: const Color.fromARGB(255, 218, 202, 55),
                borderRadius: BorderRadius.circular(12.r)),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      '     TASK-5',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 210.w,
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
                color: const Color.fromARGB(255, 218, 202, 55),
                borderRadius: BorderRadius.circular(12.r)),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      '     TASK-6',
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                    SizedBox(
                      width: 210.w,
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
        ],
      ),
    );
  }
}
