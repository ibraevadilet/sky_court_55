import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sky_court/sky/sky.dart';
import 'package:sky_court/sky/sky_local_object.dart';
import 'package:sky_court/sss/gnchgc.dart';

late final SharedPreferences asdasfasfas;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  OneSignal.initialize('6abb2e0f-18b6-47e5-8258-53853e1b27d5');
  await OneSignal.Notifications.requestPermission(true);
  await Hive.initFlutter();
  Hive.registerAdapter(SkyLocalModelAdapter());
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await HETethgnrtr().yuturg();
  asdasfasfas = await SharedPreferences.getInstance();
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
    sky(context, (p0) {});
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
