import 'package:ag_crm_myadmin/models/tool_model.dart';
import 'package:ag_crm_myadmin/models/woker_model.dart';

class ProjectModel {
  final String id;
  final String name;
  final String image;
  final String location;
  final List<String> imagesList;
  final double budget;
  final String description;
  final DateTime createdAt;
  final bool isActive;
  final List<WokerModel> wokers;
  final List<ToolModel> tools;

  ProjectModel({
    required this.id,
    required this.name,
    required this.image,
    required this.location,
    required this.imagesList,
    required this.budget,
    required this.description,
    required this.createdAt,
    required this.isActive,
    required this.wokers,
    required this.tools,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      location: json['location'],
      imagesList: List<String>.from(json['imagesList']),
      budget: json['budget'].toDouble(),
      description: json['description'],
      createdAt: DateTime.parse(json['createdAt']),
      isActive: json['isActive'],
      wokers: List<WokerModel>.from(
        json['wokers'].map((x) => WokerModel.fromJson(x)),
      ),
      tools: List<ToolModel>.from(
        json['tools'].map((x) => ToolModel.fromJson(x)),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'location': location,
      'imagesList': imagesList,
      'budget': budget,
      'description': description,
      'createdAt': createdAt.toIso8601String(),
      'isActive': isActive,
      'wokers': wokers.map((x) => x.toJson()).toList(),
      'tools': tools.map((x) => x.toJson()).toList(),
    };
  }
}
