import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FreeClass extends StatefulWidget {
  const FreeClass({Key? key}) : super(key: key);

  @override
  State<FreeClass> createState() => _FreeClassState();
}

class _FreeClassState extends State<FreeClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text(
          'Free Class',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildRowContainer(
              'assets/images/com.png',
              'Competitive Exam',
              'assets/images/com.png',
              'Railway',
                  () {
                // onTap1 callback
              },
                  () {
                // onTap2 callback
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowContainer(
      String image1,
      String text1,
      String image2,
      String text2,
      VoidCallback onTap1,
      VoidCallback onTap2,
      ) {
    return Row(
      children: [
        _buildContainer(image1, text1, onTap1),
        _buildContainer(image2, text2, onTap2),
      ],
    );
  }

  Widget _buildContainer(
      String imagePath,
      String text,
      VoidCallback onTap,
      ) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0.r),
            border: Border.all(
              color: Colors.grey.shade200,
              width: 2.0.w,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0.w),
                child: CircleAvatar(
                  radius: 45.sp,
                  backgroundColor: Colors.white,
                  child: Image.asset(imagePath),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0.w),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
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
