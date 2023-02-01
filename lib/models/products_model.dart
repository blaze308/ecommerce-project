class Product {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ProductModel> _products;
  List<ProductModel> get products => _products;

  Product(
      {required totalSize,
      required typeId,
      required offset,
      required products}) {
    _totalSize = totalSize;
    _typeId = typeId;
    _offset = offset;
    _products = products;
  }

  Product.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((e) {
        _products.add(ProductModel.fromJson(e));
      });
    }
  }
}

class ProductModel {
  int? id;
  String? name;
  String? description;
  int? price;
  int? stars;
  String? img;
  String? location;
  String? createdAt;
  String? updateAt;
  int? typeId;

  ProductModel({
    this.id,
    this.name,
    this.createdAt,
    this.description,
    this.img,
    this.location,
    this.price,
    this.stars,
    this.typeId,
    this.updateAt,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['createdAt'];
    description = json['description'];
    img = json['img'];
    location = json['location'];
    price = json['price'];
    stars = json['stars'];
    typeId = json['typeId'];
    updateAt = json['updateAt'];
  }
}
