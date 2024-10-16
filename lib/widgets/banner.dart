// ignore_for_file: public_member_api_docs, sort_constructors_first
class Banner {
  String? id;
  String? categoryId;
  String? collectionId;
  String? thumbnail;

  Banner(
    this.id,
    this.categoryId,
    this.collectionId,
    this.thumbnail,
  );

  factory Banner.mapFromJson(Map<String, dynamic> jsonObject) {
    return Banner(
      jsonObject['id'],
      jsonObject['categoryId'],
      jsonObject['collectionId'],
      'https://startflutter.ir/api/files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['thumbnail']}',
    );
  }
}
