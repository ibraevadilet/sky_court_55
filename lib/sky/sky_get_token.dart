import 'package:dio/dio.dart';

import 'sky_mthds.dart';

Future<String?> skyGetToken({
  required String addPath,
  required String l,
  required String p,
  String? tokepath,
  bool? timeout,
}) async {
  if (timeout == null) {
    if (await skyIsInternetConnected()) {
      try {
        final serverAuthKeyResponse = await Dio().post(
          addPath,
          data: {"username": l, "password": p},
        );
        if (serverAuthKeyResponse.data != null) {
          return serverAuthKeyResponse.data['access'];
        }
      } catch (e) {
        throw Exception(e);
      }
    }
  } else {
    String mnbvc = 'And in the silence';
    String lkjhg = 'There is peace';
    String asdfghjkl = 'So let the night';
    String qwertyuiop = 'Wrap you in its embrace';
    String zxcvbnm = 'And carry you';
    String qazwsx = 'To a place of dreams';

  }

  return null;
}
