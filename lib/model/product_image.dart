class ProductImage {
  String? productId;
  String? imageUrl;

  ProductImage(
    this.productId,
    this.imageUrl,
  );

  factory ProductImage.mapFromJson(Map<String, dynamic> jsonObject) {
    return ProductImage(
      jsonObject['product_id'],
      'https://startflutter.ir/api/files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['image']}',
    );
  }
}
