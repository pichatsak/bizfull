// To parse this JSON data, do
//
//     final reviewModel = reviewModelFromJson(jsonString);

import 'dart:convert';

ReviewModel reviewModelFromJson(String str) =>
    ReviewModel.fromJson(json.decode(str));

String reviewModelToJson(ReviewModel data) => json.encode(data.toJson());

class ReviewModel {
  ReviewModel({
    required this.reviewId,
    required this.reviewStar,
    required this.reviewMsg,
    required this.reviewDate,
    required this.productId,
  });

  int reviewId;
  int reviewStar;
  String reviewMsg;
  String reviewDate;
  int productId;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
        reviewId: json["review_id"],
        reviewStar: json["review_star"],
        reviewMsg: json["review_msg"],
        reviewDate: json["review_date"],
        productId: json["product_id"],
      );

  Map<String, dynamic> toJson() => {
        "review_id": reviewId,
        "review_star": reviewStar,
        "review_msg": reviewMsg,
        "review_date": reviewDate,
        "product_id": productId,
      };
}
