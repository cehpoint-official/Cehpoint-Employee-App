import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const add_emp());
}

class add_emp extends StatelessWidget {
  const add_emp({super.key});

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
          home: const Add_emp(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Add_emp extends StatelessWidget {
  const Add_emp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Text(
          'ADD EMPLOYEE',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 23.sp),
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 110.w,
              ),
              Text(
                'Employee Details',
                style: TextStyle(
                    color: Color(hexColor('#D4C00B')), fontSize: 18.sp),
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
                Icons.person,
                color: Color.fromARGB(255, 168, 168, 168),
                size: 25,
              ),
              SizedBox(
                width: 20.w,
              ),
              SizedBox(
                width: 240.h,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'EMPLOYEE NAME',
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              const Icon(
                Icons.phone,
                color: Color.fromARGB(255, 168, 168, 168),
                size: 25,
              ),
              SizedBox(
                width: 20.w,
              ),
              SizedBox(
                width: 240.h,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'PHONE NUMBER',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              const Icon(
                Icons.mail_outline,
                color: Color.fromARGB(255, 168, 168, 168),
                size: 25,
              ),
              SizedBox(
                width: 20.w,
              ),
              SizedBox(
                width: 240.h,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'EMAIL ID',
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Image.asset('assets/emp_usern.png'),
              SizedBox(
                width: 20.w,
              ),
              SizedBox(
                width: 240.h,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'EMPLOYEE USER NAME',
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Image.asset('assets/emp_pass.png'),
              SizedBox(
                width: 20.w,
              ),
              SizedBox(
                width: 240.h,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'EMPLOYEE PASSWORD',
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 150.h,
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
                Text(
                  'ADD EMPLOYEE',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                ),
              ],
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
