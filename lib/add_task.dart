import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cehpoint/task_details.dart';

void main() {
  runApp(const add_task());
}

class add_task extends StatelessWidget {
  const add_task({super.key});

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
          home: const Add_task(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class Add_task extends StatelessWidget {
  const Add_task({super.key});

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
            height: 15.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 130.w,
              ),
              Text(
                'Task Details',
                style: TextStyle(
                    color: const Color.fromARGB(255, 226, 209, 53),
                    fontSize: 18.sp),
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
              SizedBox(
                width: 320.w,
                height: 50.h,
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    hintText: 'TASK TITLE',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(width: 320.w, height: 60.h, child: taskno()),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              SizedBox(
                width: 320.w,
                height: 50.h,
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    hintText: 'TASK COMPLETE DATE',
                  ),
                ),
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
              SizedBox(
                width: 320.w,
                height: 200.h,
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    hintText: 'TASK DETAILS',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const task_details()),
              );
            },
            child: Container(
              width: 317.w,
              height: 45.h,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 218, 202, 55),
                  borderRadius: BorderRadius.circular(25.r)),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  Text(
                    'SAVE',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class taskno extends StatefulWidget {
  @override
  _tasknoState createState() => _tasknoState();
}

class _tasknoState extends State<taskno> {
  List<String> items = [
    'Task 1',
    'Task 2',
    'Task 3',
    'Task 4',
    'Task 5',
    'Task 6',
  ];
  String? selectedItem = 'Task 3';

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SizedBox(
          width: 320.w,
          height: 57.h,
          child: DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
            ),
            value: selectedItem,
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item, style: const TextStyle(fontSize: 15)),
                    ))
                .toList(),
            onChanged: (item) => setState(() => selectedItem = item),
          ),
        ),
      );
}
