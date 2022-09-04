// It will contain the details of the product which the user intents to buy
class ProductModel {
  final String uid; // unique id for each product
  final String name; // name of the product
  final String description; // description of the product
  final int price; // price of the product
  final String image; // image of the product
  final String category; // category of the product
  final String subCategory; // sub category of the product
  final String brand; // brand of the product
  final String color; // color of the product
  final String size; // size of the product
  ProductModel({
    required this.uid,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
    required this.subCategory,
    required this.brand,
    required this.color,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'description': description,
      'price': price,
      'image': image,
      'category': category,
      'subCategory': subCategory,
      'brand': brand,
      'color': color,
      'size': size,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      uid: map['uid'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      price: map['price']?.toInt() ?? 0,
      image: map['image'] ?? '',
      category: map['category'] ?? '',
      subCategory: map['subCategory'] ?? '',
      brand: map['brand'] ?? '',
      color: map['color'] ?? '',
      size: map['size'] ?? '',
    );
  }
}
