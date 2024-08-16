class GoldModel {
  bool success;
  String base;
  Rates rates;

  GoldModel({
    required this.success,
    required this.base,
    required this.rates,
  });

  factory GoldModel.fromJson(Map<String, dynamic> json) {
    return GoldModel(
      success: json['success'],
      base: json['base'],
      rates: Rates.fromJson(json['rates']),
    );
  }

 
}

class Rates {
  double egpEur;
  double egpGbp;
  double egpKwd;
  double egpSar;
  double egpUsd;
  double egpXag;
  double egpXau;
  

  Rates({
    required this.egpEur,
    required this.egpGbp,
    required this.egpKwd,
    required this.egpSar,
    required this.egpUsd,
    required this.egpXag,
    required this.egpXau,
    
  });

  factory Rates.fromJson(Map<String, dynamic> json) {
    return Rates(
      egpEur: json['EGPEUR'],
      egpGbp: json['EGPGBP'],
      egpKwd: json['EGPKWD'],
      egpSar: json['EGPSAR'],
      egpUsd: json['EGPUSD'],
      egpXag: json['EGPXAG'],
      egpXau: json['EGPXAU'],
     
    );
  }

  
  
}
