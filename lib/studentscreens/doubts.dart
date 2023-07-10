import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoubtPage extends StatefulWidget {
  @override
  _DoubtPageState createState() => _DoubtPageState();
}

class _DoubtPageState extends State<DoubtPage> {
  TextEditingController _doubtController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _doubtController = TextEditingController();
  }

  @override
  void dispose() {
    _doubtController.dispose();
    super.dispose();
  }

  void _postDoubt() {
    String doubtText = _doubtController.text;
    // Perform any actions with the doubt text, e.g., send it to a server
    print('Doubt posted: $doubtText');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text(
          'Doubt Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _doubtController,
                    decoration: InputDecoration(
                      hintText: 'Enter your doubt',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.attach_file),
                  onPressed: () {
                    // Handle attachment functionality
                    print('Attachment button pressed');
                  },
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Spacer(),
                SizedBox(
                  height: 50.h,
                  width: 150.w,
                  child: ElevatedButton(
                    onPressed: _postDoubt,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Change the button color here
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r), // Adjust the corner radius here
                      ),
                    ),
                    child: Text('Post Doubt'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}