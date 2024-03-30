import 'package:hive/hive.dart';

part 'fsdfsdfsdf.g.dart';

@HiveType(typeId: 5)
class Lsdfsdfsdf extends HiveObject {
  @HiveField(0)
  String secondUrl;

  @HiveField(1)
  bool isOpen;
  Lsdfsdfsdf({
    required this.secondUrl,
    required this.isOpen,
  });
}
