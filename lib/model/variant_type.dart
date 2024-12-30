class VariantType {
  String? id;
  String? name;
  String? title;
  VariantTypeEnum? type;

  VariantType(
    this.id,
    this.name,
    this.title,
    this.type,
  );

  factory VariantType.mapFromJson(Map<String, dynamic> jsonObject) {
    return VariantType(
      jsonObject['id'],
      jsonObject['name'],
      jsonObject['title'],
      _getVariantTypeEnum(jsonObject['type']),
    );
  }
}

enum VariantTypeEnum {
  color,
  storage,
  voltage,
}

VariantTypeEnum _getVariantTypeEnum(String type) {
  switch (type) {
    case 'Color':
      return VariantTypeEnum.color;
    case 'Storage':
      return VariantTypeEnum.storage;
    case 'Voltage':
      return VariantTypeEnum.voltage;
    default:
      return VariantTypeEnum.color;
  }
}
