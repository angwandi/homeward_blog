class BlogFields {
  static const String id = 'id';
  static const String createdAt = 'createdAt';
  static const String title = 'title';
  static const String imageUrl = 'imageUrl';
}



class BlogListModel {
  final String? id;
  final DateTime? createdAt;
  final String? title;
  final String? imageUrl;

  BlogListModel({
    this.id,
    this.createdAt,
    this.title,
    this.imageUrl,
  });

  factory BlogListModel.fromJson(Map<String, dynamic> json) => BlogListModel(
        id: json[BlogFields.id],
        createdAt: DateTime.parse(json[BlogFields.createdAt]),
        title: json[BlogFields.title],
        imageUrl: json[BlogFields.imageUrl],
      );

  Map<String, dynamic> toJson() => {
        BlogFields.id: id,
        BlogFields.title: title,
        BlogFields.createdAt: createdAt,
        BlogFields.imageUrl: imageUrl,
      };
}
