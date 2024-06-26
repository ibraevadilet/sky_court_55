// ignore_for_file: use_build_context_synchronously

import 'package:apphud/apphud.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_court/core/bottom_bar.dart';
import 'package:sky_court/core/premium_page.dart';
import 'package:sky_court/main.dart';
import 'package:sky_court/sss/asdasassfas.dart';

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
                height: 370.h,
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AEgsfsfaa(
                            title: 'Term of Service',
                            url:
                                'https://docs.google.com/document/d/1xdnzdrKgLteUCfhfoiVwiWcVYQZ28hWJcHCVsU92p-s/edit?usp=sharing',
                          ),
                        ),
                      );
                    },
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
                    onTap: () async {
                      final hasPremiumAccess = await Apphud.hasPremiumAccess();
                      final hasActiveSubscription =
                          await Apphud.hasActiveSubscription();
                      if (hasPremiumAccess || hasActiveSubscription) {
                        await asdasfasfas.setBool('sdfsfafsa', true);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              CupertinoAlertDialog(
                            title: const Text('Success!'),
                            content:
                                const Text('Your purchase has been restored!'),
                            actions: [
                              CupertinoDialogAction(
                                isDefaultAction: true,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const BottomBar(),
                                    ),
                                    (route) => false,
                                  );
                                },
                                child: const Text('Ok'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              CupertinoAlertDialog(
                            title: const Text('Restore purchase'),
                            content: const Text(
                                'Your purchase is not found. Write to support: https://forms.gle/mdmW3VDo1Mx4HF369'),
                            actions: [
                              CupertinoDialogAction(
                                isDefaultAction: true,
                                onPressed: () => {Navigator.of(context).pop()},
                                child: const Text('Ok'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
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
