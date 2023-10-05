import 'dart:convert';

List<GetProductResponse> getProductResponseFromJson(String str) => List<GetProductResponse>.from(json.decode(str).map((x) => GetProductResponse.fromJson(x)));

String getProductResponseToJson(List<GetProductResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetProductResponse {
  int id;
  String title;
  String description;
  String image;

  GetProductResponse({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
  });

  factory GetProductResponse.fromJson(Map<String, dynamic> json) => GetProductResponse(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    image: json["image"]
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "image": image
  };
}
