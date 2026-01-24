class WokerModel {
  final String id;
  final String name;
  final String currentLocation;
  final List<String> loactionsHistory;
  final double hourlyRate;
  final double dailyRate;
  final String phoneNumber;
  final String email;
  final String country;
  final List<String> skills;
  final List<double> avances;
  final bool isAtHome;
  final bool isBrigadier;
  final List<double> penalties;
  final List<double> bonuses;

  WokerModel({
    required this.id,
    required this.name,
    required this.currentLocation,
    required this.loactionsHistory,
    required this.hourlyRate,
    required this.dailyRate,
    required this.phoneNumber,
    required this.email,
    required this.country,
    required this.skills,
    required this.avances,
    required this.isAtHome,
    required this.isBrigadier,
    required this.penalties,
    required this.bonuses,
  });

  factory WokerModel.fromJson(Map<String, dynamic> json) {
    return WokerModel(
      id: json['id'],
      name: json['name'],
      currentLocation: json['currentLocation'],
      loactionsHistory: List<String>.from(json['loactionsHistory']),
      hourlyRate: json['hourlyRate'].toDouble(),
      dailyRate: json['dailyRate'].toDouble(),
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      country: json['country'],
      skills: List<String>.from(json['skills']),
      avances: List<double>.from(json['avances'].map((x) => x.toDouble())),
      isAtHome: json['isAtHome'],
      isBrigadier: json['isBrigadier'],
      penalties: List<double>.from(json['penalties'].map((x) => x.toDouble())),
      bonuses: List<double>.from(json['bonuses'].map((x) => x.toDouble())),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'currentLocation': currentLocation,
      'loactionsHistory': loactionsHistory,
      'hourlyRate': hourlyRate,
      'dailyRate': dailyRate,
      'phoneNumber': phoneNumber,
      'email': email,
      'country': country,
      'skills': skills,
      'avances': avances,
      'isAtHome': isAtHome,
      'isBrigadier': isBrigadier,
      'penalties': penalties,
      'bonuses': bonuses,
    };
  }
}
