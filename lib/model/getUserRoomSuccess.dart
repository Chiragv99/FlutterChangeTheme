
import 'dart:convert';

GetUserRoomSaveResponse getUserRoomSaveResponseFromJson(String str) => GetUserRoomSaveResponse.fromJson(json.decode(str));

String getUserRoomSaveResponseToJson(GetUserRoomSaveResponse data) => json.encode(data.toJson());

class GetUserRoomSaveResponse {
  bool success;
  String message;

  GetUserRoomSaveResponse({
    required this.success,
    required this.message,
  });

  factory GetUserRoomSaveResponse.fromJson(Map<String, dynamic> json) => GetUserRoomSaveResponse(
    success: json["Success"],
    message: json["Message"],
  );

  Map<String, dynamic> toJson() => {
    "Success": success,
    "Message": message,
  };
}
