// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class CharacterEntity {
  String image;
  String title;
  String description;

  CharacterEntity({
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  String toString() =>
      'CharacterEntity(image: $image, title: $title, description: $description)';

  @override
  bool operator ==(covariant CharacterEntity other) {
    if (identical(this, other)) return true;

    return other.image == image &&
        other.title == title &&
        other.description == description;
  }

  @override
  int get hashCode => image.hashCode ^ title.hashCode ^ description.hashCode;
}
