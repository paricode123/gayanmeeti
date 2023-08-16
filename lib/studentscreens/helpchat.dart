import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpChat extends StatefulWidget {
  const HelpChat({Key? key}) : super(key: key);

  @override
  State<HelpChat> createState() => _HelpChatState();
}

class _HelpChatState extends State<HelpChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30.h),
              Text(
                'Help Section',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0D0D26),
                ),
              ),
              SizedBox(height: 30.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  hintText: 'Full Name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  hintText: 'Email ID',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  hintText: 'Phone No.',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  hintText: 'Select Issue',
                  prefixIcon: Icon(Icons.select_all),
                ),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  hintText: 'Write about the problem',
                  prefixIcon: Icon(Icons.report_problem_outlined),
                ),
              ),
              SizedBox(height: 35.h),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 327.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.red.shade800, Colors.orange.shade700],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Text(
                      'Submit Issue',
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 327.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.green.shade900, Colors.green.shade300],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Text(
                      'Whatsapp Support',
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}