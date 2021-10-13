class MoviesList {
  late String description;
  late int favoriteCount;
  late int id;
  late int itemCount;
  late String iso6391;
  late String listType;
  late String name;

  MoviesList({
    required this.description,
    required this.favoriteCount,
    required this.id,
    required this.itemCount,
    required this.iso6391,
    required this.listType,
    required this.name,
  });

  MoviesList.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    favoriteCount = json['favorite_count'];
    id = json['id'];
    itemCount = json['item_count'];
    iso6391 = json['iso_639_1'];
    listType = json['list_type'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['favorite_count'] = this.favoriteCount;
    data['id'] = this.id;
    data['item_count'] = this.itemCount;
    data['iso_639_1'] = this.iso6391;
    data['list_type'] = this.listType;
    data['name'] = this.name;

    return data;
  }
}
