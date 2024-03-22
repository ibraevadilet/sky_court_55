// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_court/core/premium_page.dart';

class CkyOnBording extends StatefulWidget {
  const CkyOnBording({
    Key? key,
  }) : super(key: key);

  @override
  State<CkyOnBording> createState() => _CkyOnBordingState();
}

class _CkyOnBordingState extends State<CkyOnBording> {
  late PageController pageController;
  int pageIndex = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(listOn[pageIndex].images),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.r),
                padding: EdgeInsets.all(24.r),
                width: MediaQuery.of(context).size.width,
                height: 340.h,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            listOn.length,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: DotIndicator(
                                isActive: index == pageIndex,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Expanded(
                      child: PageView.builder(
                        itemCount: listOn.length,
                        physics: const NeverScrollableScrollPhysics(),
                        controller: pageController,
                        onPageChanged: (index) {
                          setState(() {
                            pageIndex = index;
                          });
                        },
                        itemBuilder: ((context, index) => Column(
                              children: [
                                Text(
                                  listOn[index].title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24.h,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 24.h),
                                Text(
                                  listOn[index].subTitle,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18.h,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () async {
                        if (pageIndex == 2) {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PremiumPage(),
                            ),
                            (protected) => false,
                          );
                        } else {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        }
                      },
                      child: Container(
                        width: 140.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xffFF6B00),
                        ),
                        child: Center(
                          child: Text(
                            'Next',
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
              SizedBox(height: 50.h),
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
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 8 : 8,
      width: isActive ? 56 : 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xffFF6B00) : const Color(0xffAFAFAF),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

class Contents {
  final String images;
  final String title;
  final String subTitle;

  Contents({
    required this.images,
    required this.title,
    required this.subTitle,
  });
}

List<Contents> listOn = [
  Contents(
    images: 'assets/images/bgOn1.png',
    title: 'Rules and Tips',
    subTitle:
        'Familiarize yourself with the rules of playing basketball and read useful tips',
  ),
  Contents(
    images: 'assets/images/bgOn2.png',
    title: 'Quiz game',
    subTitle:
        'Interesting quiz, find out more and test your knowledge about basketball',
  ),
  Contents(
    images: 'assets/images/bgOn3.png',
    title: 'Basketball throwing game',
    subTitle:
        'Throw the ball into the basket and try to make as many successful shots as possible',
  ),
];
