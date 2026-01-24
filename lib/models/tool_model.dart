class ToolModel {
  final String id;
  final String name;
  final String imageUrl;
  final List<String> images;
  final String category;
  final double price;
  final String description;
  final bool isBroken;
  final DateTime lastUpdated;
  final List<String> locationsHistory;
  final String currentLocation;
  final String brand;
  final String model;

  ToolModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.images,
    required this.category,
    required this.price,
    required this.description,
    required this.isBroken,
    required this.lastUpdated,
    required this.locationsHistory,
    required this.currentLocation,
    required this.brand,
    required this.model,
  });

  factory ToolModel.fromJson(Map<String, dynamic> json) {
    return ToolModel(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      images: List<String>.from(json['images']),
      category: json['category'],
      price: json['price'].toDouble(),
      description: json['description'],
      isBroken: json['isBroken'],
      lastUpdated: DateTime.parse(json['lastUpdated']),
      locationsHistory: List<String>.from(json['locationsHistory']),
      currentLocation: json['currentLocation'],
      brand: json['brand'],
      model: json['model'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'images': images,
      'category': category,
      'price': price,
      'description': description,
      'isBroken': isBroken,
      'lastUpdated': lastUpdated.toIso8601String(),
      'locationsHistory': locationsHistory,
      'currentLocation': currentLocation,
      'brand': brand,
      'model': model,
    };
  }
}
