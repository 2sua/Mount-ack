class Route {
  String? id;
  String? mntnNm;
  String? pmntnNm;
  double? pmntnLt;
  String? pmntnDffl;
  int? pmntnUppl;
  int? pmntnGodn;
  String? pmntnRisk;
  List<dynamic>? geometry;

  Route({
    this.id,
    this.mntnNm,
    this.pmntnNm,
    this.pmntnLt,
    this.pmntnDffl,
    this.pmntnUppl,
    this.pmntnGodn,
    this.pmntnRisk,
    this.geometry,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'mntnNm': mntnNm,
      'pmntnNm': pmntnNm,
      'pmntnLt': pmntnLt,
      'pmntnDffl': pmntnDffl,
      'pmntnUppl': pmntnUppl,
      'pmntnGodn': pmntnGodn,
      'pmntnRisk': pmntnRisk,
      'geometry': geometry,
    };
  }
}
