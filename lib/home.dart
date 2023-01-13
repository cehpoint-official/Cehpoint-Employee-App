import 'package:cehpoint/add_emp.dart';
import 'package:cehpoint/emp_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({super.key});

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
          home: const Home(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                width: 10.w,
              ),
              const Icon(Icons.search),
              SizedBox(
                width: 8.w,
              ),
              Text(
                'Search Employee',
                style: TextStyle(color: Colors.grey, fontSize: 18.sp),
              ),
              SizedBox(
                width: 26.w,
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
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const add_emp()),
                  );
                }),
                child: Container(
                  width: 317.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 202, 55),
                      borderRadius: BorderRadius.circular(12.r)),
                  child: Column(
                    children: [
                      SizedBox(height: 10.h),
                      Text(
                        '+ADD EMPLOYEE',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Container(
            child: TabBar(
              isScrollable: true,
              controller: _tabController,
              indicatorColor: const Color.fromARGB(255, 218, 202, 55),
              labelPadding: EdgeInsets.fromLTRB(40.w, 20.h, 40.w, 10.h),
              labelColor: Colors.black,
              tabs: [
                Text(
                  'Employees',
                  style: TextStyle(color: Colors.black, fontSize: 20.sp),
                ),
                Text(
                  'Task',
                  style: TextStyle(color: Colors.black, fontSize: 20.sp),
                ),
              ],
            ),
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.h,
                      ),
                      Image.asset(
                        'assets/employee.png',
                        height: 20.h,
                        width: 20.h,
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Employee 1',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 85.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 227, 221, 157),
                              borderRadius: BorderRadius.circular(5.r),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5.r),
                              ]),
                          child: Column(
                            children: [
                              SizedBox(height: 6.h),
                              Text(
                                'INVITE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Divider(),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.h,
                      ),
                      Image.asset(
                        'assets/employee.png',
                        height: 20.h,
                        width: 20.h,
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Employee 2',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 85.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 227, 221, 157),
                              borderRadius: BorderRadius.circular(5.r),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5.r),
                              ]),
                          child: Column(
                            children: [
                              SizedBox(height: 6.h),
                              Text(
                                'INVITE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Divider(),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.h,
                      ),
                      Image.asset(
                        'assets/employee.png',
                        height: 20.h,
                        width: 20.h,
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Employee 3',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 85.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 227, 221, 157),
                              borderRadius: BorderRadius.circular(5.r),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5.r),
                              ]),
                          child: Column(
                            children: [
                              SizedBox(height: 6.h),
                              Text(
                                'INVITE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Divider(),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.h,
                      ),
                      Image.asset(
                        'assets/employee.png',
                        height: 20.h,
                        width: 20.h,
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Employee 1',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const emp_1()),
                          );
                        },
                        child: Container(
                          width: 85.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 227, 221, 157),
                              borderRadius: BorderRadius.circular(5.r),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5.r),
                              ]),
                          child: Column(
                            children: [
                              SizedBox(height: 6.h),
                              Text(
                                'Add Task',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Divider(),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.h,
                      ),
                      Image.asset(
                        'assets/employee.png',
                        height: 20.h,
                        width: 20.h,
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Employee 2',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 85.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 227, 221, 157),
                              borderRadius: BorderRadius.circular(5.r),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5.r),
                              ]),
                          child: Column(
                            children: [
                              SizedBox(height: 6.h),
                              Text(
                                'Add Task',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Divider(),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.h,
                      ),
                      Image.asset(
                        'assets/employee.png',
                        height: 20.h,
                        width: 20.h,
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        'Employee 3',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 90.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 85.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 227, 221, 157),
                              borderRadius: BorderRadius.circular(5.r),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5.r),
                              ]),
                          child: Column(
                            children: [
                              SizedBox(height: 6.h),
                              Text(
                                'Add Task',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.sp),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const Divider(),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
