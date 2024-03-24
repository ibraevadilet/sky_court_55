import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_court/core/premium_page.dart';
import 'package:sky_court/sss/asdasassfas.dart';
import 'package:sky_court/sss/tyurtyrg.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        title: const Text('Settings'),
        titleTextStyle: TextStyle(
          fontSize: 32.h,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.r),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AEgsfsfaa(
                      title: 'Privacy Policy',
                      url:
                          'https://docs.google.com/document/d/1tgzW0JM-cLdn_Jvy7m5Xlk_NT0nGibZHJP-_SXTf9UQ/edit?usp=sharing',
                    ),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.r,
                  vertical: 12.r,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/privacy.png',
                      width: 24.w,
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AEgsfsfaa(
                      title: 'Term of use',
                      url:
                          'https://docs.google.com/document/d/1xdnzdrKgLteUCfhfoiVwiWcVYQZ28hWJcHCVsU92p-s/edit?usp=sharing',
                    ),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.r,
                  vertical: 12.r,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/term.png',
                      width: 24.w,
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      'Term of use',
                      style: TextStyle(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AEgsfsfaa(
                      title: 'Support',
                      url: 'https://forms.gle/mdmW3VDo1Mx4HF369',
                    ),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.r,
                  vertical: 12.r,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/support.png',
                      width: 24.w,
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      'Support',
                      style: TextStyle(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25.h),
            InkWell(
              onTap: () => kityuthbnd(context),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.r,
                  vertical: 12.r,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/restore.png',
                      width: 24.w,
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      'Restore',
                      style: TextStyle(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PremiumPage(
                      canPop: true,
                    ),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.r,
                  vertical: 12.r,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/crownIcon.png',
                      width: 24.w,
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      'Get Premium',
                      style: TextStyle(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff6AA9FF),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
