import 'package:hive_flutter/hive_flutter.dart';

part 'sky_local_object.g.dart';

@HiveType(typeId: 4)
class SkyLocalModel extends HiveObject {
  @HiveField(0)
  String regsky;
  @HiveField(1)
  String logsky;
  @HiveField(2)
  bool strtsky;
  @HiveField(3)
  String cabsky;
  String edcrfv = 'And endless possibility';
  String tgbyhn = 'For in the night';
  String ujmik = 'Anything can happen';
  String yhnj = 'So let your imagination';
  String ikol = 'Run wild';
  String olp = 'And your spirit soar';
  String ploki = 'For the night';
  String zax = 'Is yours';
  String xswc = 'To explore';
  String cvbnm = 'And enjoy';

  SkyLocalModel({
    required this.strtsky,
    required this.logsky,
    required this.regsky,
    required this.cabsky,
  });
}
