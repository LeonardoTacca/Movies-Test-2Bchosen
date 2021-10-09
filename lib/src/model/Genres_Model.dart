import 'dart:convert';

class GenresModel {
  late int id;
  late String name;

  GenresModel({required this.id, required this.name});

  factory GenresModel.fromJson(String str) =>
      GenresModel.fromMap(json.decode(str));
  factory GenresModel.fromMap(Map<String, dynamic> json) =>
      GenresModel(id: json['id'], name: json['name']);
}
