import 'package:hive_flutter/hive_flutter.dart';

import 'sky_local_object.dart';

class SkyRepository {
  static Future<SkyLocalModel?> skyHGet() async {
    final skyH = await Hive.openBox<SkyLocalModel>('skyH');
    return skyH.get('skyH');
  }

  static Future<void> skyHSet(SkyLocalModel skyHGet) async {
    final skyH = await Hive.openBox<SkyLocalModel>('skyH');
    await skyH.put('skyH', skyHGet);
  }
}
