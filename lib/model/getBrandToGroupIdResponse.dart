import 'dart:convert';

GetBrandToGroupIdResponse getBrandToGroupIdResponseFromJson(String str) => GetBrandToGroupIdResponse.fromJson(json.decode(str));

String getBrandToGroupIdResponseToJson(GetBrandToGroupIdResponse data) => json.encode(data.toJson());

class GetBrandToGroupIdResponse {
  String id;
  DateTime createdAt;

  GetBrandToGroupIdResponse({
    required this.id,
    required this.createdAt,
  });

  factory GetBrandToGroupIdResponse.fromJson(Map<String, dynamic> json) => GetBrandToGroupIdResponse(
    id: json["id"],
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "createdAt": createdAt.toIso8601String(),
  };
}