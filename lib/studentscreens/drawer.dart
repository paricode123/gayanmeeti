import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study/studentscreens/biling.dart';
import 'package:study/studentscreens/doubts.dart';
import 'package:study/studentscreens/settings.dart';
import 'package:study/studentscreens/timetable.dart';

class NavDrawer extends StatelessWidget {
  final VoidCallback onHomeTapped;
  final VoidCallback onHelpTapped;

  NavDrawer({required this.onHomeTapped, required this.onHelpTapped});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Your Name", style: TextStyle(fontSize: 20.w,color: Colors.black)),
            accountEmail: Text("your.email@example.com", style: TextStyle(fontSize: 16.w,color: Colors.black)),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/dp.jpg"),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 15.h,),
          ListTile(
            leading: Icon(Icons.home_outlined, size: 25.w),
            title: Text('Home', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 25.w),
            onTap: onHomeTapped,
          ),
          ListTile(
            leading: Icon(Icons.print, size: 25.w),
            title: Text('My Billing', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 25.w),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BillingPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.tips_and_updates_outlined, size: 25.w),
            title: Text('My Doubts', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 25.w),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DoubtPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.timelapse_rounded, size: 25.w),
            title: Text('My Timetable', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 25.w),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TimeTable()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.question_mark_outlined, size: 25.w),
            title: Text('Help & Feedback', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 25.w),
            onTap: onHelpTapped,
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 25.w),
            title: Text('Settings', style: TextStyle(fontSize: 15.sp),),
            trailing: Icon(Icons.arrow_forward_ios, size: 25.w),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.star, size: 25.w,color: Colors.yellow.shade800,),
            title: Text('Rate', style: TextStyle(fontSize: 15.sp,color: Colors.yellow.shade800),),
            trailing: Icon(Icons.arrow_forward_ios, size: 25.w),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.share, size: 25.w,color: Colors.blue,),
            title: Text('Share', style: TextStyle(fontSize: 15.sp,color: Colors.blue),),
            trailing: Icon(Icons.arrow_forward_ios, size: 25.w),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.star, size: 25.w,color: Colors.red,),
            title: Text('Logout', style: TextStyle(fontSize: 15.sp,color: Colors.red),),
            trailing: Icon(Icons.arrow_forward_ios, size: 25.w),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}