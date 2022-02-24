class ProfileModel {
  final int id;
  final String name;
  final String image;
  final int color;

  ProfileModel({
    required this.id,
    required this.name,
    required this.image,
    required this.color,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        color: json['color'],
      );
}
