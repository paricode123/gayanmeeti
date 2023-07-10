import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Paid extends StatefulWidget {
  const Paid({Key? key}) : super(key: key);

  @override
  State<Paid> createState() => _PaidState();
}

class _PaidState extends State<Paid> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Paid Courses',
          style: TextStyle(color: Colors.black),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: BottomAppBar(
            color: Colors.white,
            elevation: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "All Courses",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "School Academics",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Competitive Exams",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  // Add the remaining 5 containers here
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  // Add the remaining 5 containers here
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSecondContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildSecondContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSecondContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildSecondContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildSecondContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildSecondContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                  _buildSecondContainer(
                    'Test Series',
                        () {
                      // onTap2 callback
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContainer(String text, VoidCallback onTap) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Material(
        elevation: 3,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: (MediaQuery.of(context).size.width - 10.w),
            padding: EdgeInsets.all(16.0.w),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/course.png'),
                      radius: 30.r,
                    ),
                    SizedBox(width: 16.0.w),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Share',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share),
                    )
                  ],
                ),
                SizedBox(height: 16.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Action for Buy Now button
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(10.r), // Curve the corner (adjust the value as desired)
                          ),
                        ),
                      ),
                      child: Text('Buy Now'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Action for Buy Now button
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue.shade700), // Change button color
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(10.r), // Curve the corner (adjust the value as desired)
                          ),
                        ),
                      ),
                      child: Text('View Course'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Action for Buy Now button
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue.shade700), // Change button color
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(10.r), // Curve the corner (adjust the value as desired)
                          ),
                        ),
                      ),
                      child: Text('View Demo'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSecondContainer(String text, VoidCallback onTap) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Material(
        elevation: 3,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: MediaQuery.of(context).size.width * 1.0, // Adjust the width as needed
            child: Column(
              children: [
                Image.asset(
                  'assets/images/course.png',
                  height: 200.h,
                  width: double.infinity, // Make the image width equal to the container width
                ),
                SizedBox(height: 10.h),
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.sp,
                  ),
                ),
                Text('Text 2'),
                Text('Text 3'),
                Text('Text 4'),
                Text('Text 5'),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Action for Buy Now button
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(10.r), // Curve the corner (adjust the value as desired)
                            ),
                          ),
                        ),
                        child: Text('Buy Now'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Action for Buy Now button
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue.shade700), // Change button color
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(10.r), // Curve the corner (adjust the value as desired)
                            ),
                          ),
                        ),
                        child: Text('View Course'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Action for Buy Now button
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue.shade700), // Change button color
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(10.r), // Curve the corner (adjust the value as desired)
                            ),
                          ),
                        ),
                        child: Text('View Demo'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}