import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study/studentscreens/bottom.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text('Back',style: TextStyle(color: Colors.grey,fontSize: 18.sp),),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              Row(
                children: [
                  Text(
                    'Register Account',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0D0D26),
                    ),
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
              SizedBox(height: 50.h),
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 8.w,),
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0D0D26),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  hintText: 'Full Name',
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 8.w,),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0D0D26),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  hintText: 'Phone No.',
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                children: [
                  Icon(Icons.gps_fixed),
                  SizedBox(width: 8.w,),
                  Text(
                    'State',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0D0D26),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  hintText: 'State',
                ),
              ),
              SizedBox(height: 70.h),
              Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home_Page()),
                    );
                  },
                  child: Container(
                    width: 327.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.blue.shade400,
                    ),
                    child: Center(child: Text('Register Now',style: TextStyle(color: Colors.white,fontSize: 16.sp),)),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}