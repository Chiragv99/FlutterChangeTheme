import 'package:fluttercustomtheme/model/getCommentModel.dart';
import 'package:fluttercustomtheme/uttils/constant.dart';
import 'package:http/http.dart' as http;


class ApiService{
Future<List<GetCommentModel>?> getCommentList() async {
  var client  = http.Client();
  var uri = Uri.parse(Constant.BaseUrl + "/comments");
  var response = await client.get(uri);

  if (response.statusCode == 200) {
    var json = response.body;
    print(json.toString());
    return getCommentModelFromJson(json);
  } else {
    throw Exception("Unable to perform request!");
  }
}
}