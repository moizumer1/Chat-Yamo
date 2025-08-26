// lib/features/dating/data/models/user_model.dart


import '../../../domain/entities/user_entity/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required String id,
    required String name,
    required int age,
    required List<String> interests,
    required String bio,
    required String imageUrl,
    required double distance,
  }) : super(
    id: id,
    name: name,
    age: age,
    interests: interests,
    bio: bio,
    imageUrl: imageUrl,
    distance: distance,
  );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      interests: List<String>.from(json['interests']),
      bio: json['bio'],
      imageUrl: json['imageUrl'],
      distance: json['distance']?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'interests': interests,
      'bio': bio,
      'imageUrl': imageUrl,
      'distance': distance,
    };
  }
}