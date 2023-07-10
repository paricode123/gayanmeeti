import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study/studentscreens/password.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text('Settings',style: TextStyle(color: Colors.grey,fontSize: 18.sp),),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
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
                Icon(Icons.perm_identity_outlined),
                SizedBox(width: 8.w,),
                Text(
                  'Username',
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
                hintText: 'Username',
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Spacer(),
                TextButton(
                  onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Password()),
                    );
                  },
                  child: Text('Change Password',style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),),
                ),
              ],
            ),
            Spacer(),
            Center(
              child: GestureDetector(
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Home_Page()),
                  // );
                },
                child: Container(
                  width: 327.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.blue.shade400,
                  ),
                  child: Center(child: Text('Update Profile',style: TextStyle(color: Colors.white,fontSize: 16.sp),)),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Center(
              child: TextButton(
                onPressed: () {
                //   Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => LoginScreen()),
                // );
                  },
                child: Text('Disable Account?',style: TextStyle(fontSize: 16.sp,color: Colors.red,decoration: TextDecoration.underline),),
              ),
            ),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
