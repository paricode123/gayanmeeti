import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18.sp,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            Row(
              children: [
                Icon(Icons.lock),
                SizedBox(width: 8.w),
                Text(
                  'New Password',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0D0D26),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            MyTextField(icon: Icons.lock, hint: 'Password'),
            SizedBox(height: 30.h),
            Row(
              children: [
                Icon(Icons.lock_outline),
                SizedBox(width: 8.w),
                Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0D0D26),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            MyTextField(icon: Icons.lock, hint: 'Password'),
            Spacer(),
            Center(
              child: GestureDetector(
                onTap: () {
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
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      'Update Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}


class MyTextField extends StatefulWidget {
  final IconData icon;
  final String hint;

  const MyTextField({Key? key, required this.icon, required this.hint})
      : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        hintText: widget.hint,
        prefixIcon: Icon(widget.icon),
        suffixIcon: widget.icon == Icons.lock
            ? IconButton(
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        )
            : null,
      ),
      obscureText: widget.icon == Icons.lock ? _obscureText : false,
    );
  }
}
