import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_court/core/sky_onboarding.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;
  late PageController pageController2;
  int pageIndex = 0;
  bool _chek = false;

  @override
  void initState() {
    pageController = PageController(viewportFraction: 0.8);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        title: const Text('Home'),
        titleTextStyle: TextStyle(
          fontSize: 32.h,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Basketball rules',
                  style: TextStyle(
                    fontSize: 20.h,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 14.h,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffFF6B00),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              controller: pageController,
              itemCount: 3,
              onPageChanged: ((value) => setState(() => pageIndex = value)),
              itemBuilder: (context, int index) {
                if (pageIndex == index) {
                  _chek = true;
                } else {
                  _chek = false;
                }
                return AnimatedPadding(
                  duration: const Duration(milliseconds: 300),
                  padding: EdgeInsets.symmetric(
                    vertical: _chek ? 20.sp : 38.sp,
                    horizontal: 10,
                  ),
                  child: Container(
                    width: 340,
                    height: 300,
                    color: Colors.amber,
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: DotIndicator(
                    isActive: index == pageIndex,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
