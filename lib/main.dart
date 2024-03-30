import 'package:apphud/apphud.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sky_court/core/bottom_bar.dart';
import 'package:sky_court/core/sky_onboarding.dart';
import 'package:sky_court/fhjkghjghj/fdsfdsf.dart';
import 'package:sky_court/fhjkghjghj/fsdfsdfsdf/fsdfsdfsdf/fsdfsdfsdf.dart';

late final SharedPreferences asdasfasfas;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Apphud.start(apiKey: 'app_hpRkMvvRJnDMDV6oM96hTrnu95mTWT');
  asdasfasfas = await SharedPreferences.getInstance();
  await Hive.initFlutter();
  Hive.registerAdapter(NewPosterModelAdapter());
  await startLogic();
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

    SharedPreferences.getInstance().then(
      (prefs) async {
        if (!prefs.containsKey('sdjfhsjhruhsjskdfjks')) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const CkyOnBording(),
            ),
          );
          prefs.setDouble('sdjfhsjhruhsjskdfjks', 83471658);
          await Future.delayed(const Duration(seconds: 4));
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const BottomBar(
                indexScr: 0,
              ),
            ),
          );
        }
      },
    );
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
