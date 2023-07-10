import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Syllabus extends StatefulWidget {
  const Syllabus({Key? key}) : super(key: key);

  @override
  State<Syllabus> createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text(
          'Test Series',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30.h),
            _buildContainer(
              'Syllabus',
                  () {
// onTap2 callback
              },
            ),
            _buildContainer(
              'Syllabus',
                  () {
// onTap2 callback
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(String text, VoidCallback onTap) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.h),
        child: Material(
          elevation: 3,
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              width: (MediaQuery.of(context).size.width - 40.w),
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/pdf.png',
                        width: 70.w,
                      ),
                      SizedBox(width: 30.0.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                text,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 70.w),
                              Text(
                                'Share',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.grey.shade800,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.share, size: 20.sp),
                              )
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
// Action for View PDF button
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                  side: BorderSide(color: Colors.red), // Border color
                                ),
                              ),
                            ),
                            child: Text(
                              'View PDF',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}