class ProductModel {
  int? id;
  String? title;
  String? description;
  double? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;

  ProductModel(
      {this.id = 0,
      this.title = "no title",
      this.description = "no dec",
      this.price = 0,
      this.discountPercentage = 0,
      this.rating = 0,
      this.stock = 0,
      this.brand = "no brand",
      this.category = "no category",
      this.thumbnail = "no thumbnal"});

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
        id: map['id'],
        title: map['title'],
        description: map['description'],
        price: map['price'],
        discountPercentage: map['discountPercentage'],
        rating: map['rating'],
        stock: map['stock'],
        brand: map['brand'],
        category: map['category'],
        thumbnail: map['thumblnail']);
  }
}
