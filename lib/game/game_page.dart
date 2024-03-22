import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_court/game/game_det_page.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        title: const Text('Quiz game'),
        titleTextStyle: TextStyle(
          fontSize: 32.h,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'assets/images/qwiz_border.png',
              ),
              Positioned(
                top: 30.h,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/abc_icon.png',
                      height: 58.h,
                    ),
                    SizedBox(height: 26.h),
                    Text(
                      '15 questions',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20.h,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const GameDetPage(),
                          ),
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
                          'Start',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 20.h,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
