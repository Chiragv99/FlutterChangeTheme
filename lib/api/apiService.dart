import 'dart:convert';

import 'package:fluttercustomtheme/model/getBrandToGroupIdResponse.dart';
import 'package:fluttercustomtheme/model/getCommentModel.dart';
import 'package:fluttercustomtheme/model/getProductResponse.dart';
import 'package:fluttercustomtheme/model/getUserRoomSuccess.dart';
import 'package:fluttercustomtheme/uttils/constant.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


class ApiService{
Future<List<GetCommentModel>?> getCommentList() async {
  var client  = http.Client();
  var uri = Uri.parse("${Constant.BaseUrl}/comments");
  var response = await client.get(uri);

  if (response.statusCode == 200) {
    var json = response.body;
    print(json.toString());
    return getCommentModelFromJson(json);
  } else {
    throw Exception("Unable to perform request!");
  }
}

Future<GetBrandToGroupIdResponse?> getSaveRoomResponse() async {

  var response = await post(Uri.parse('https://reqres.in/api/Product/BrandIdToGroupId'));
  print(response.toString());
  if (response.statusCode == 201) {
    var json = response.body;
    print(json.toString());
    return getBrandToGroupIdResponseFromJson(json);
  } else {
    throw Exception("Unable to perform request!${response.statusCode}");
  }
}


}