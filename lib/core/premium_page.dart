import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_court/core/bottom_bar.dart';
import 'package:sky_court/main.dart';
import 'package:sky_court/sss/asdasassfas.dart';
import 'package:sky_court/sss/gnchgc.dart';
import 'package:sky_court/sss/tyurtyrg.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key, this.canPop = false});
  final bool canPop;

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  Future<void> afafasfafafafsasfgadgfh() async {
    final learAdaPaywall = await HETethgnrtr().eryerhjth('placement_55-B');
    if (learAdaPaywall == null) return;
    final learAdaProducts = await HETethgnrtr().hgfhdgsbfngmh(learAdaPaywall);
    if (learAdaProducts == null) return;

    await HETethgnrtr().khgjfhdgsdhfjgh(learAdaProducts.first);
  }

  bool asfaf = false;

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
                      if (widget.canPop) {
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
                      onTap: () async {
                        setState(() {
                          asfaf = true;
                        });
                        await afafasfafafafsasfgadgfh();
                        final hasPremiumStatusSmartTrader =
                            await HETethgnrtr().ertfger();
                        if (hasPremiumStatusSmartTrader) {
                          await asdasfasfas.setBool('sdfsfafsa', true);
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const BottomBar(),
                            ),
                            (route) => false,
                          );
                        }
                        setState(() {
                          asfaf = false;
                        });

                        // asdasfasfas.setBool('sdfsfafsa', true);
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
                    onTap: () => kityuthbnd(context),
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
        )),
      ),
    );
  }
}
