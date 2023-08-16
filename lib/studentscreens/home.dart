import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'banner.dart';
import 'courses/currentaffair.dart';
import 'courses/freeclass.dart';
import 'courses/job.dart';
import 'courses/paid.dart';
import 'courses/syllabus.dart';
import 'courses/testseries.dart';

class ChooseLevel extends StatefulWidget {
  const ChooseLevel({Key? key}) : super(key: key);

  @override
  State<ChooseLevel> createState() => _ChooseLevelState();
}

class _ChooseLevelState extends State<ChooseLevel> {
  bool _isFollowing = false;
  String operatingSystem = Platform.operatingSystem;

  final PageController _controller = PageController(initialPage: 0);
  late Timer _timer;
  int _currentPage = 0;
  bool isLastPage = false;

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_currentPage < 1) {
        _currentPage++;
      } else {}
      _controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  void _toggleFollow() {
    setState(() {
      _isFollowing = !_isFollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.25,
                child: PageView(
                  controller: _controller,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Open the desired page when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BannerPage(), // Replace with your actual widget/page
                          ),
                        );
                      },
                      child: Image.asset('assets/images/banner.png', fit: BoxFit.cover),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Open the desired page when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BannerPage(), // Replace with your actual widget/page
                          ),
                        );
                      },
                      child: Image.asset('assets/images/banner2.png', fit: BoxFit.cover),
                    ),
                  ],
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                      isLastPage = page == 1;
                    });
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                child: Column(
                  children: [
                    _buildRowContainer(
                      'assets/images/paid.png',
                      'Paid Courses',
                      'assets/images/test.png',
                      'Test Series',
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Paid()),
                        );
                      },
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TestSeries()),
                        );
                      },
                    ),
                    _buildRowContainer(
                      'assets/images/class.png',
                      'Free Class',
                      'assets/images/syllabus.png',
                      'Syllabus',
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FreeClass()),
                        );
                      },
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Syllabus()),
                        );
                      },
                    ),
                    _buildRowContainer(
                      'assets/images/gk.png',
                      'Current Affairs',
                      'assets/images/notify.png',
                      'Job Alerts',
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CurrentAffairs()),
                        );
                      },
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Job()),
                        );
                      },
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ],
          ),
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
          margin: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.sp),
            border: Border.all(
              color: Colors.grey.shade200,
              width: 2.sp,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: CircleAvatar(
                  radius: 45.sp,
                  backgroundColor: Colors.white,
                  child: Image.asset(imagePath),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.sp),
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