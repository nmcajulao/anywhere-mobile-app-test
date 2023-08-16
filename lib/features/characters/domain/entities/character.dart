// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class CharacterEntity extends Equatable {
  final String image;
  final String title;
  final String description;

  const CharacterEntity({
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  List<Object> get props => [image, title, description];

  CharacterEntity copyWith({
    String? image,
    String? title,
    String? description,
  }) {
    return CharacterEntity(
      image: image ?? this.image,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
      'description': description,
    };
  }

  factory CharacterEntity.fromMap(Map<String, dynamic> map) {
    return CharacterEntity(
      image: map['image'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterEntity.fromJson(String source) =>
      CharacterEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
