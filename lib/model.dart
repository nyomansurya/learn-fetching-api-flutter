class User {
  final String name;
  final String avatar;
  final String id;

  const User({
    required this.name,
    required this.avatar,
    required this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      id: json['id'] as String,
    );
  }
}