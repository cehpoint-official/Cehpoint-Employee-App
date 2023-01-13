import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const task_details());
}

class task_details extends StatelessWidget {
  const task_details({super.key});

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
          home: const Task_details(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Task_details extends StatelessWidget {
  const Task_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'TASK DETAILS',
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
                width: 10.w,
              ),
              Text(
                'Employee 1',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 150.w,
              ),
              const Icon(
                Icons.verified,
                color: Colors.green,
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 40.w,
              ),
              Text(
                'TASK TITLE',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.sp,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 40.w,
              ),
              Text(
                'Wordpress theme setup',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 40.w,
              ),
              Text(
                'TASK NO.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.sp,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 40.w,
              ),
              Text(
                'Task 6',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 40.w,
              ),
              Text(
                'TASK COMPLETE DATE',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.sp,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 40.w,
              ),
              Text(
                '13.02.2023',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 40.w,
              ),
              Text(
                'TASK DETAILS',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.sp,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 40.w,
              ),
              Text(
                '1.Choose a good theme for \neducation site.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 40.w,
              ),
              Text(
                '2.Install WordPress',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 40.w,
              ),
              Text(
                '3.Setup this theme',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
