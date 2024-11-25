class Product {
  String? id;
  String? collectionId;
  String? name;
  int? price;
  int? discountPrice;
  String? popularity;
  String? thumbnail;
  String? description;
  int? quantity;
  String? category;
  int? realPrice;
  num? discountPercent;

  Product(
    this.id,
    this.collectionId,
    this.name,
    this.price,
    this.discountPrice,
    this.popularity,
    this.thumbnail,
    this.description,
    this.quantity,
    this.category,
  ) {
    if (discountPrice == null) {
      discountPrice = 0;
      discountPercent = 0;
      realPrice = price;
    } else {
      realPrice = price! + discountPrice!;
      discountPercent = ((discountPrice! / realPrice!) * 100).round();
    }
  }

  factory Product.mapFromJson(Map<String, dynamic> jsonObject) {
    return Product(
      jsonObject['id'],
      jsonObject['collectionId'],
      jsonObject['name'],
      jsonObject['price'],
      jsonObject['discount_price'],
      jsonObject['popularity'],
      'https://startflutter.ir/api/files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['thumbnail']}',
      jsonObject['description'],
      jsonObject['quantity'],
      jsonObject['category'],
    );
  }
}
