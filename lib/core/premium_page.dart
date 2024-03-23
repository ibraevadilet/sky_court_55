import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_court/core/bottom_bar.dart';
import 'package:sky_court/main.dart';

class PremiumPage extends StatelessWidget {
  const PremiumPage({super.key, this.canPop = false});
  final bool canPop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/premiumImage.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      if (canPop) {
                        Navigator.pop(context);
                        return;
                      }
                      Navigator.pushAndRemoveUntil<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const BottomBar(),
                        ),
                        ModalRoute.withName('/'),
                      );
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.all(24.r),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PREMIUM',
                          style: TextStyle(
                            fontSize: 24.h,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Image.asset(
                          'assets/images/crownIcon.png',
                          width: 25.w,
                        )
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/checkIcon.png',
                          width: 35.w,
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            'Access to all training programs',
                            style: TextStyle(
                              fontSize: 20.h,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/checkIcon.png',
                          width: 35.w,
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Text(
                            'Without Ads',
                            style: TextStyle(
                              fontSize: 20.h,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 38.h),
                    InkWell(
                      onTap: () {
                        asfasfasfafs.setBool('sdfsfafsa', true);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xffFF6B00),
                        ),
                        child: Center(
                          child: Text(
                            'Buy Premium for \$0,99',
                            style: TextStyle(
                              fontSize: 20.h,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Term of Service',
                      style: TextStyle(
                        fontSize: 14.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Restore',
                      style: TextStyle(
                        fontSize: 14.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontSize: 14.h,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),
        )),
      ),
    );
  }
}
