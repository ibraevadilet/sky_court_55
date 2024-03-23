import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_court/core/premium_page.dart';
import 'package:sky_court/main.dart';
import 'package:sky_court/programs/program_all.dart';
import 'package:sky_court/programs/program_content.dart';

class ProgramsPage extends StatefulWidget {
  const ProgramsPage({super.key});

  @override
  State<ProgramsPage> createState() => _ProgramsPageState();
}

class _ProgramsPageState extends State<ProgramsPage> {
  bool isPrem = false;

  @override
  void initState() {
    isPrem = asfasfasfafs.getBool('sdfsfafsa') ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        title: const Text('Training programs'),
        titleTextStyle: TextStyle(
          fontSize: 32.h,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProgramAll(title: 'Basic skills', list: listBasic),
                    ),
                  );
                },
                child: Image.asset('assets/images/trn1.png'),
              ),
              SizedBox(height: 20.h),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProgramAll(
                          title: 'Physical training', list: listPhysics),
                    ),
                  );
                },
                child: Image.asset('assets/images/trn2.png'),
              ),
              SizedBox(height: 20.h),
              Stack(
                alignment: Alignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (!isPrem) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PremiumPage(
                              canPop: true,
                            ),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProgramAll(
                              title: 'Tactics',
                              list: listTactics,
                            ),
                          ),
                        );
                      }
                    },
                    child: Image.asset('assets/images/trn3.png'),
                  ),
                  if (!isPrem)
                    Positioned(
                      right: 80.w,
                      child: Image.asset(
                        'assets/images/lock_icon.png',
                        height: 40.h,
                      ),
                    ),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
