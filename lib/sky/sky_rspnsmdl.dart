class SkyRspnsMdl {
  late bool boolValue;
  late SkyRspnsMdlObject skyRspnsMdlObject;

  SkyRspnsMdl({
    required this.boolValue,
    required this.skyRspnsMdlObject,
  });

  SkyRspnsMdl.fromJson(Map<String, dynamic> json) {
    boolValue = json['brs_strt'];
    skyRspnsMdlObject = SkyRspnsMdlObject.fromJson(json['bk_json']);
  }
}

class SkyRspnsMdlObject {
  String? brt;
  String? trg;
  String? uyy;
  String? tvr;

  SkyRspnsMdlObject({this.brt, this.trg, this.uyy, this.tvr});

  SkyRspnsMdlObject.fromJson(Map<String, dynamic> json) {
    brt = json['brt'];
    trg = json['trg'];
    uyy = json['uyy'];
    tvr = json['tvr'];
  }
}
