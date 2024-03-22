import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_court/core/bottom_bar.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.otvets});

  final int otvets;
  String otvetText(int otvets) {
    if (otvets <= 5) {
      return 'SATISFACTORY';
    } else if (otvets <= 10) {
      return 'GOOD';
    } else {
      return 'EXCELLENT';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF9F59),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Text(
              otvetText(otvets),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.h,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              'RESULT!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.h,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45.w),
                    child: Image.asset(
                      'assets/images/cubok_icon.png',
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    '$otvets/15',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.h,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const BottomBar(indexScr: 1),
                  ),
                  (pred) => false,
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 44,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffFF6B00),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Return',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20.h,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h),
          ],
        ),
      ),
    );
  }
}
