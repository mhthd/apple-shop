// ignore_for_file: public_member_api_docs, sort_constructors_first
class Category {
  String? id;
  String? collectionId;
  String? icon;
  String? title;
  String? thumbnail;
  String? color;

  Category(
    this.id,
    this.collectionId,
    this.icon,
    this.title,
    this.thumbnail,
    this.color,
  );

  factory Category.mapFromJson(Map<String, dynamic> jsonObject) {
    return Category(
      jsonObject['id'],
      jsonObject['collectionId'],
      'https://startflutter.ir/api/files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['icon']}',
      jsonObject['title'],
      'https://startflutter.ir/api/files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['thumbnail']}',
      jsonObject['color'],
    );
  }
}
