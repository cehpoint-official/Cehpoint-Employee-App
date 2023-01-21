import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const payment());
}

class payment extends StatelessWidget {
  const payment({super.key});

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
          home: const Payment(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'PAYMENT',
          style: TextStyle(
              color: Colors.black,
              fontSize: 25.sp,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 120.w,
              ),
              Text(
                'Payment Details',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                'Let us know your expectation?(Amount)',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 317.w,
            height: 40.h,
            decoration: BoxDecoration(
                color: Color(hexColor('#FFFADB')),
                borderRadius: BorderRadius.circular(12.r)),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                'Beneficiary name:',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 317.w,
            height: 40.h,
            decoration: BoxDecoration(
                color: Color(hexColor('#FFFADB')),
                borderRadius: BorderRadius.circular(12.r)),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                'Account number:',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 317.w,
            height: 40.h,
            decoration: BoxDecoration(
                color: Color(hexColor('#FFFADB')),
                borderRadius: BorderRadius.circular(12.r)),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                'IFSC code:',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 317.w,
            height: 40.h,
            decoration: BoxDecoration(
                color: Color(hexColor('#FFFADB')),
                borderRadius: BorderRadius.circular(12.r)),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                'Paytm number:',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 317.w,
            height: 40.h,
            decoration: BoxDecoration(
                color: Color(hexColor('#FFFADB')),
                borderRadius: BorderRadius.circular(12.r)),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 25.w,
              ),
              Text(
                'Phonepe number:',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 317.w,
            height: 40.h,
            decoration: BoxDecoration(
                color: Color(hexColor('#FFFADB')),
                borderRadius: BorderRadius.circular(12.r)),
          ),
          SizedBox(
            height: 10.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const payment()),
              );
            },
            child: Container(
              width: 220.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: Color(hexColor('#D4C00B')),
                  borderRadius: BorderRadius.circular(25.r)),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  Text(
                    'Submit',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
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
