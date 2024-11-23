// ignore_for_file: public_member_api_docs, sort_constructors_first
class HomeBanner {
  String? id;
  String? categoryId;
  String? collectionId;
  String? thumbnail;

  HomeBanner(
    this.id,
    this.categoryId,
    this.collectionId,
    this.thumbnail,
  );

  factory HomeBanner.mapFromJson(Map<String, dynamic> jsonObject) {
    return HomeBanner(
      jsonObject['id'],
      jsonObject['categoryId'],
      jsonObject['collectionId'],
      'https://startflutter.ir/api/files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['thumbnail']}',
    );
  }
}
