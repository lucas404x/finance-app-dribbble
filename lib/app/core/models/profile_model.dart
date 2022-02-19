class ProfileModel {
  final String name;
  final String image;
  final int color;

  ProfileModel({required this.name, required this.image, required this.color});

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
      name: json['name'], image: json['image'], color: json['color']);
}
