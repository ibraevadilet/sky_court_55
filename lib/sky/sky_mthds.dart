import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:battery_plus/battery_plus.dart';
import 'package:flutter_network_connectivity/flutter_network_connectivity.dart';
import 'package:country_codes/country_codes.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tzdata;

Future<bool> skyIsUsingVpn() async {
  var skyConnectivityResult = await (Connectivity().checkConnectivity());

  return skyConnectivityResult == ConnectivityResult.vpn;
}

Future<String> skyCountryCode() async {
  await CountryCodes.init();

  final Locale? skyDeviceLocale = CountryCodes.getDeviceLocale();

  if (skyDeviceLocale != null && skyDeviceLocale.countryCode != null) {
    return skyDeviceLocale.countryCode!.toLowerCase();
  }
  return '';
}

Future<bool> skyIsSemulator(BuildContext context) async {
  DeviceInfoPlugin skyDeviceInfoPlugin = DeviceInfoPlugin();
  if (Theme.of(context).platform == TargetPlatform.iOS) {
    IosDeviceInfo skyIosDeviceInfo = await skyDeviceInfoPlugin.iosInfo;
    return !skyIosDeviceInfo.isPhysicalDevice;
  }
  return false;
}

Future<int> skyBatteryLevel() async {
  final Battery skyBattery = Battery();
  try {
    int skyBatteryLevel = await skyBattery.batteryLevel;

    return skyBatteryLevel;
  } catch (e) {}
  return 0;
}

Future<bool> skyIsCharging() async {
  final Battery skyBattery = Battery();
  try {
    bool skyIsCharging = false;
    skyBattery.onBatteryStateChanged.listen((BatteryState state) {
      if (state == BatteryState.charging) {
        skyIsCharging = true;
      }
    });
    return skyIsCharging;
  } catch (e) {
    throw Exception(e);
  }
}

Future<bool> skyIsInternetConnected() async {
  final FlutterNetworkConnectivity skyFlutterNetworkConnectivity =
      FlutterNetworkConnectivity(
    isContinousLookUp: true,
    lookUpDuration: const Duration(seconds: 5),
  );
  bool skyIsNetworkConnectedOnCall =
      await skyFlutterNetworkConnectivity.isInternetConnectionAvailable();
  return skyIsNetworkConnectedOnCall;
}

Future<void> skyBrowse(String ur) async {
  final url = Uri.parse(ur).normalizePath();
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}

Future<String> skyGetTime() async {
  tzdata.initializeTimeZones();

  tz.TZDateTime moscowTime = tz.TZDateTime.now(tz.getLocation('Europe/Moscow'));
  return DateTime(moscowTime.year, moscowTime.month, moscowTime.day,
          moscowTime.hour, moscowTime.minute)
      .toString();
}
