import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sky_court/core/sky_onboarding.dart';


late final SharedPreferences asfasfasfafs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  asfasfasfafs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
          fontFamily: 'SFProDisplay',
          scaffoldBackgroundColor: Colors.white,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        title: 'Sky Court',
        home: const SecondPage(),
      ),
      designSize: const Size(390, 844),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({
    super.key,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    super.initState();
    _calmSplash();
  }

  _calmSplash() async {
    await Future.delayed(const Duration(milliseconds: 1407), () {});

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const CkyOnBording(),
      ),
    );

    // SharedPreferences.getInstance().then(
    //   (prefs) async {
    //     if (!prefs.containsKey('sdjfhsjhruhsjskdfjks')) {
    //       Navigator.pushReplacement(
    //         context,
    //         MaterialPageRoute(
    //           builder: (context) => const CgOnBording(),
    //         ),
    //       );
    //       prefs.setDouble('sdjfhsjhruhsjskdfjks', 83471658);
    //       await Future.delayed(const Duration(seconds: 4));
    //       try {
    //         final InAppReview inAppReview = InAppReview.instance;

    //         if (await inAppReview.isAvailable()) {
    //           inAppReview.requestReview();
    //         }
    //       } catch (e) {
    //         throw Exception(e);
    //       }
    //     } else {
    //       Navigator.pushReplacement(
    //         context,
    //         MaterialPageRoute(
    //           builder: (context) => const CgBottomBar(
    //             indexScr: 0,
    //           ),
    //         ),
    //       );
    //     }
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 100.w,
        ),
      ),
    );
  }
}
