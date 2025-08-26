class UserEntity {
  final String id;
  final String name;
  final int age;
  final List<String> interests;
  final String bio;
  final String imageUrl;
  final double distance;

  UserEntity({
    required this.id,
    required this.name,
    required this.age,
    required this.interests,
    required this.bio,
    required this.imageUrl,
    required this.distance,
  });

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is UserEntity &&
            runtimeType == other.runtimeType &&
            id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}