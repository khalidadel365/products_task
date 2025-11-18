class ProductModel {
  final int? id;
  final String? title;
  final num? price;
  final String? description;
  final String? image;
  final RatingModel? rating;
  final String? category;

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.image,
    this.rating,
    this.category,
  });

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
    id: json['id'],
    title: json['title'],
    price: json['price'],
    description: json['description'],
    image: json['image'],
    rating: RatingModel.fromJson(json['rating']),
    category: json['category'],
  );
}

class RatingModel {
  final num rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(json) {
    return RatingModel(rate: json['rate'], count: json['count']);
  }
}
